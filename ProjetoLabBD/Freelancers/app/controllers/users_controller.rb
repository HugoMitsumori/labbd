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

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path @user
    else
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
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
