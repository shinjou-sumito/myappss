class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(update_params)
  end

  private
  def post_params
    params.require(:post).permit(:name, :product_name, :work_name).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:post).permit(:quantity, :text).merge(user_id: current_user.id)
  end
end
