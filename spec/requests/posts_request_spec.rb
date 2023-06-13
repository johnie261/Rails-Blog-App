require 'rails_helper'

RSpec.describe '/posts', type: :request do
  context 'GET /index' do
    before(:each) do
      @user = User.create(name: 'Test', photo: 'https://test', bio: 'This is a test.')
      get user_posts_path(@user)
    end
    it 'returns a successfull response' do
      expect(response).to be_successful
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'includes correct placeholder text in the response body' do
      expect(response.body).to include('A list of blog posts for a user')
    end
  end

  context 'GET /show' do
    before(:each) do
      @user = User.create(name: 'Test', photo: 'https://test', bio: 'This is a test.')
      @post = Post.create(author_id: @user.id, title: 'Hello test', text: 'This is my test')
      get user_post_path(@user, @post)
    end
    it 'returns a successfull response' do
      expect(response).to be_successful
    end

    it 'renders the index template' do
      expect(response).to render_template(:show)
    end

    it 'includes correct placeholder text in the response body' do
      expect(response.body).to include('Show a specific post for a user')
    end
  end
end
