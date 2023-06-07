# Create users
first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

# Create posts
first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: second_user, title: 'Hello', text: 'This is my second post')
third_post = Post.create(author: first_user, title: 'Hello', text: 'This is my third post')
fourth_post = Post.create(author: second_user, title: 'Hello', text: 'This is my fourth post')

# Creates comments
Comment.create(post: first_post, author: first_user, text: 'Hi Tom!' )
Comment.create(post: first_post, author: first_user, text: 'Hi Tom!' )
Comment.create(post: second_post, author: second_user, text: 'Hi Tom!' )
Comment.create(post: second_post, author: second_user, text: 'Hi Tom!' )
Comment.create(post: third_post, author: first_user, text: 'Hi Tom!' )
Comment.create(post: third_post, author: first_user, text: 'Hi Tom!' )
Comment.create(post: fourth_post, author: second_user, text: 'Hi Tom!' )
Comment.create(post: fourth_post, author: second_user, text: 'Hi Tom!' )

# Create likes
Like.create(post: first_post, author: first_user)
Like.create(post: second_post, author: second_user)