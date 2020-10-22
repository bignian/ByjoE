class AdminController < ApplicationController
  before_action :authenticate_user!

  def create_user
    flash.now[:notice] = "save"
    @user = User.new(params.permit(:email, :password))
      @user.user_type