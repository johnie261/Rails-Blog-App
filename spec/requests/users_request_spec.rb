require 'rails_helper'

RSpec.describe '/users', type: :request do
  context 'GET /index' do
    it 'returns a successfull response' do
      get users_path
      expect(response).to be_successful
    end

    it 'renders the index template' do
      get users_path
      expect(response).to render_template('index')
    end

    it 'renders the correct content' do
      get users_path
      expect(response.body).to include('users')
    end
  end

  context 'GET /show' do
    before(:each) do
      @user = User.create(name: 'Test', photo: 'https://test', bio: 'This is a test.')
      get user_path(@user)
    end
    it 'returns a successfull response' do
      expect(response).to be_successful
    end

    it 'renders the index template' do
      expect(response).to render_template(:show)
    end

    it 'renders the correct content' do
      expect(response.body).to include('user')
    end
  end
end
