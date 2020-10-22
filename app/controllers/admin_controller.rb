class AdminController < ApplicationController
  before_action :authenticate_user!

  def create_user
    flash.now[:notice] = "s