class UsersController < ApplicationController
  # before_action :set_user, only: :show
  # before_action :correct_user, only: :show

  # # def index
  # #   @users = User.all.page(params[:page])
  # # end

  # def show
  #   @user = User.find(params[:id])
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to login_path
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # def set_user
  #   @user = User.find(params[:id])
  # end
  
  # def correct_user
  #   redirect_to root_url if @user != current_user
  # end
end
