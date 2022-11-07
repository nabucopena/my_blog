class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = 4
    if @post.save
      redirect_to "/posts"
    else
      render "new"
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
