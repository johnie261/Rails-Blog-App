require 'rails_helper'

RSpec.describe Comment, type: :model do
    describe 'validations' do

    first_user = User.create(name: 'Johnie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Tech enthusiast.', posts_counter: 1)
    first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
    first_comment = Comment.create( author_id: first_user.id, post_id: first_post.id, text: 'Hi am Johnie!' )
    
    it 'author id shoud be present' do
        first_comment.author_id = nil
        expect(first_comment).to_not be_valid
    end
    it 'post id shoud be present' do
        first_comment.post_id = nil
        expect(first_comment).to_not be_valid
    end
    end
end