class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
    if current_user.user_type == 'admin'
      redirect_to admin_path
    elsif current_user.user_type == 'trader'
      redirect_to new_post_path
    end
  end

  # G