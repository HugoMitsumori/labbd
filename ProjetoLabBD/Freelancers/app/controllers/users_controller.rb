class UsersController < ApplicationController
  skip_before_filter :set_current_user, only: [:new, :create]
  before_filter :correct_user, only: [:edit, :update, :destroy]


  def index
    @users = search(params[:search])
  end


  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end


  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if @user.save    
      Individual.create({:login => @user.login, :name => @user.name}).save 
      log_in @user
      flash[:notice] = "#{@user.name}, welcome to Objective Hiring"
      redirect_to user_path @user
    else
      flash[:warning] = @user.errors.full_messages
      render 'new'
    end

  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @individual = Individual.find_by(login: @user.login)
    @user.destroy
    @individual.destroy
    flash[:notice] = "#{@user.name} deleted"
    redirect_to root_path
  end

  def search(s_params)
    if(s_params)
      User.where("name LIKE ?", "%#{s_params}%")
    else
      User.all
    end
  end  

  def individual
    @user = User.find_by(login: params[:user])
    redirect_to user_path(@user)
  end

  def follow
    @user = User.find_by_id @current_user.id
    @followed = User.find_by_id params[:followed]
    @individual_user = Individual.find_by(login: @user.login)
    @individual_followed = Individual.find_by(login: @followed.login)
    @individual_user.followeds << @individual_followed
    redirect_to (:back)
  end

  def unfollow
    @user = User.find_by_id @current_user.id
    @followed = User.find_by_id params[:followed]
    @individual_user = Individual.find_by(login: @user.login)
    @individual_followed = Individual.find_by(login: @followed.login)
    @individual_user.followeds(:individual, :rel).match_to(@individual_followed).delete_all(:rel)
    redirect_to (:back)
  end


  def followers
    @user = User.find_by_id(params[:user_id])    
    @individual = Individual.find_by(login: @user.login)
    @followers = @individual.followers
  end

  def following
    @user = User.find_by_id(params[:user_id])
    @individual = Individual.find_by(login: @user.login)
    @followers = @individual.followeds
  end

  private
    def user_params
      params.require(:user).permit(:login, :name, :email,
                            :password, :password_confirmation, :cpf, :profession, :age)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless (current_user?(@user) or current_user.admin?)
    end
end
