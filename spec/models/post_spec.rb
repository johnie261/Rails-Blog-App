require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    first_user = User.create(name: 'Johnie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Tech enthusiast.',
                             posts_counter: 1)
    first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post',
                             comments_counter: 0, likes_counter: 0)

    it 'post created should be valid' do
      expect(first_post).to be_valid
    end

    it 'title of the post should be present' do
      expect(first_post.title).to be_present
      expect(first_post.text).to be_present
    end

    it 'counters should be valid' do
      expect(first_post.comments_counter).to be >= 0
      expect(first_post.likes_counter).to be >= 0
    end

    it 'title shoud be present' do
      first_post.title = nil
      expect(first_post).to_not be_valid
    end
    it 'title shoud not have more than 250 characters' do
      first_post = Post.create(
        title: 'This is a very very very very very very very very very very
        very very very very very very very very very very very very very
        very very very very very very very very very very very very very
        looooooooooooooooooooooooooooooooong title',
        text: 'This is my first post', author_id: first_user.id, likes_counter: 'one'
      )
      expect(first_post).to_not be_valid
    end
    it 'comments counter shoud be numeric' do
      first_post.comments_counter = ''
      expect(first_post).to_not be_valid
    end

    it 'comments counter shoud be an integer' do
      first_post.comments_counter = 0.65
      expect(first_post).to_not be_valid
    end

    it 'comments counter shoud be greater than or equal to zero' do
      first_post.comments_counter = -2
      expect(first_post).to_not be_valid
    end
    it 'likes counter shoud be numeric' do
      first_post.likes_counter = ''
      expect(first_post).to_not be_valid
    end

    it 'likes counter shoud be an integer' do
      first_post.likes_counter = 0.65
      expect(first_post).to_not be_valid
    end

    it 'likes counter shoud be greater than or equal to zero' do
      first_post.likes_counter = -2
      expect(first_post).to_not be_valid
    end
  end
end
