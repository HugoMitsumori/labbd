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
      log_in @user
      flash[:notice] = "#{@user.name}, welcome to ProjetoBD"
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
    @user.destroy
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
