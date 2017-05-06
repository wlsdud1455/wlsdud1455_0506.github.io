class CommentsController < ApplicationController
  def create
    comment=Comment.new
    comment.content=params[:content]
    comment.post_id=params[:amugona]
    comment.save
    
    redirect_to :back
  end

  def destroy
    @destroy_comments=Post.find(params[:amugona]).comments.find(params[:lalala])
    @destroy_comments.destroy
    redirect_to :back
  end
end
