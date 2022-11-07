class CommentsController < ApplicationController

  def new
    @comment = Comment.new(new_comment_params)
  end

  def create
    @comment = Comment.new(create_comment_params)
    @comment.user_id = 4
    if @comment.save
      redirect_to "/posts/#{@comment.post_id}"
    else
      render "new"
    end
  end

  def destroy
  end

  private

    def new_comment_params
      params.permit(:post_id, :comment_id)
    end

    def create_comment_params
      params[:comment].permit(:content, :post_id, :comment_id)
    end

end
