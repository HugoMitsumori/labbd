class User < ActiveRecord::Base

  attr_accessor :remember_token

  has_many :services

  before_save { self.email = email.downcase }
  validates :login, presence: true, uniqueness: {case_sensitive:false}
  validates :name, presence: true, length: {maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :cpf, presence: true, uniqueness: {case_sensitive:false}
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }


  def follows? (user)
    @individual_self = Individual.find_by(login: self.login)
    @individual_user = Individual.find_by(login: user.login)
    return @individual_self.followeds.include?(@individual_user)
  end


  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def individual
    return Individual.find_by(login: self.login)
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end


  def timeline
    timeline_list = Array.new
    # followed_avaliations.each do |avaliation|
    #   timeline_list << avaliation
    # end

    # followed_recommendations.each do |recommendation|
    #   timeline_list  << recommendation
    # end

    # followed_commentaries.each do |commentary|
    #   timeline_list  << commentary
    # end
    # timeline_list.sort {|x,y| y.updated_at <=> x.updated_at}
  end  
end