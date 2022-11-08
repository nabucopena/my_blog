class PostsController < ApplicationController
  before_action :require_login

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
    @post = Post.includes(:user).find(params[:id])
    @comments = @post.comments.includes(:user).group_by{|p| p.comment_id}
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = session[:current_user_id]
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
