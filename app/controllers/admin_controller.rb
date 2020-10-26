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
 