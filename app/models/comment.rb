class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  # belongs_to :user
  belongs_to :post

  after_save :update_posts_comments_counter

  def author
    User.find(author_id)
  end

  private

  def update_posts_comments_counter
    post.increment!(:comments_counter)
  end
end
