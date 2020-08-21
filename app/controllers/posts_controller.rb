class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.name == "" || @post.product_name == "" || @post.work_name == ""
      redirect_to action: :new
    else  
      redirect_to controller: :users, action: :show, id: current_user.id
    end  
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to controller: :users, action: :show, id: current_user.id
  end  

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(update_params)
    redirect_to controller: :users, action: :show, id: current_user.id
  end

  private
  def post_params
    params.require(:post).permit(:name, :product_name, :work_name).merge(user_id: current_user.id)
  end

  def update_params
    params.require(:post).permit(:quantity, :text).merge(user_id: current_user.id)
  end
end
 