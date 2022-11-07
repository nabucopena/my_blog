class CommentsController < ApplicationController

  def new
    @comment = Comment.new(comment_params)
  end

  def create
  end

  def destroy
  end

  private

    def comment_params
      params.permit(:post_id, :comment_id)
    end

end
