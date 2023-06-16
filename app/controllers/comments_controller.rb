class CommentsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params.merge(post: @post))

    if @comment.save
      redirect_to user_post_path(@user, @post)
    else
      render 'new'
    end
  end

  private

  def comment_params
    # params.require(:comment).permit(:text)
    params.require(:comment).permit(:text)
  end
end