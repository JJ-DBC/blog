get '/posts' do
  @posts = Post.all
  erb :index
end

post '/posts' do
  # allow user to create post via form and sumbit form to the database
  @post = Post.create(params[:post])

  redirect "/posts/#{@post.id}"
  # erb :show  # look into difference between erb/render and 'redirect to'
end

get '/posts/new' do
  # allows user create a new post by showing a form

  erb :post
end

get '/posts/:id' do
  @post = Post.find(params[:id])

  #show user post by specific id
  erb :show
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])

  erb :edit   
end

post '/posts/:id/update' do
  # allows user to update post via form and submit for to database
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])
  redirect '/posts/:id'
  # erb :show  # look into difference between erb/render and 'redirect to'
end


# post '/posts/:id/delete' do
#   # allows user to delete post from database

#   redirect '/posts'
#   # erb :index  # look into difference between erb/render and 'redirect to'
# end
