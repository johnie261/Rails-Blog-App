require 'rails_helper'

RSpec.describe Like, type: :model do
    describe 'validations' do

    first_user = User.create(name: 'Johnie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Tech enthusiast.', posts_counter: 1)
    first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post', comments_counter: 0, likes_counter: 0)
    first_like = Like.create(post_id: first_post.id, author_id: first_user.id)
    
    it 'author id shoud be present' do
        first_like.author_id = nil
        expect(first_like).to_not be_valid
    end
    it 'post id shoud be present' do
        first_like.post_id = nil
        expect(first_like).to_not be_valid
    end
    end
end