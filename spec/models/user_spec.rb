require 'rails_helper'

RSpec.describe User, type: :model do
    
    first_user = User.create(name: 'Johnie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Tech enthusiast.', posts_counter: 0)

    it 'name shoud be present' do
        first_user.name = nil
        expect(first_user).to_not be_valid
    end

    it 'posts counter shoud be numeric' do
        first_user.posts_counter = ''
        expect(first_user).to_not be_valid
    end

    it 'posts counter shoud be an integer' do
        first_user.posts_counter = 0.65
        expect(first_user).to_not be_valid
    end

    it 'posts counter shoud be greater than or equal to zero' do
        first_user.posts_counter = -2
        expect(first_user).to_not be_valid
    end
end 