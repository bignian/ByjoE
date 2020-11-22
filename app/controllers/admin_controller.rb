class AdminController < ApplicationController
  before_action :authenticate_user!

  def create_user
    flash.now[:notice] = "save"
    @user = User.new(params.permit(:email, :password))
      @user.user_type = 'trader'
      if @user.save!
        flash.now[:notice] = "save"
        redirect_to root_path
      else
        flash.now[:notice] = "not save"
        render admin_new_path
      end
  end

  def trader_list
    @users = User.where.not(user_type: 'admin')
    render 'users/index'
  end

  def trader_details
    @user = User.find(params[:id])
    render 'users/show'
  end

  def edit_trader
    @user = User.find(params[:id])
    render 'users/edit'
  end

  def update_trader
    @user = User.find(params[:user][:id])
    if @user.update(user_params)
      redirect_to "/admin/trader_list"
    else
      render 'users/edit'
    end
  end

  private
  def user_params
      params.require(:user).permit(:email, :id)
  end
end