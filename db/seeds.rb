
first_user = User.create(name: 'Tom', photo: 'img-one.jpg', bio: 'Artist from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'img-two.jpg', bio: 'Artist from Poland.')
third_user = User.create(name: 'Johnny', photo: 'img-three.jpg', bio: 'Artist from USA.')
fourth_user = User.create(name: 'Edna', photo: 'img-four.jpg', bio: 'Artist from UK.')

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'World of tech', text: 'This is my second post')
third_post = Post.create(author: second_user, title: 'Coding is fun', text: 'This is my third post')
fourth_post = Post.create(author: second_user, title: 'save your tears', text: 'This is my fourth post')
fifth_post = Post.create(author: third_user, title: 'Ruby dev', text: 'This is my article about ruby and ruby on rails')
sixth_post = Post.create(author: third_user, title: 'Artificial intelligence', text: 'This is my second post')
seventh_post = Post.create(author: fourth_user, title: 'Hello world', text: 'Coding is sweet')
eighth_post = Post.create(author: fourth_user, title: 'Learn react', text: 'This is my react article')

Comment.create(post: first_post, author: first_user, text: 'Hi Tom!' )
Comment.create(post: first_post, author: second_user, text: 'Hi Tim!' )
Comment.create(post: first_post, author: third_user, text: 'Hi Tommy cat!' )
Comment.create(post: first_post, author: fourth_user, text: 'Hi Tommy cat!' )
Comment.create(post: second_post, author: first_user, text: 'Hi Johnie!' )
Comment.create(post: second_post, author: first_user, text: 'Hi Ernesto!' )
Comment.create(post: second_post, author: first_user, text: 'Good atricle!' )
Comment.create(post: second_post, author: first_user, text: 'Good atricle!' )


Like.create(post: first_post, author: first_user)
Like.create(post: first_post, author: second_user)
Like.create(post: second_post, author: third_user)
Like.create(post: second_post, author: fourth_user)