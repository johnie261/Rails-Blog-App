class LikesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @like = @post.likes.build(author_id: current_user.id)

    if @like.save
      redirect_to user_post_path(@user, @post), notice: 'Post liked!'
    else
      redirect_to user_post_path(@user, @post), alert: 'Unable to like the post.'
    end
  end
end
