class CommmentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)

    if @comment.save
        redirect_to @post
      else
        render 'new'
      end
  end

  private

  def comment_params
    #params.require(:comment).permit(:text)
    params.require(:comment).permit(:text).merge(author: current_user)
  end
end