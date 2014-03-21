get '/users' do
  # @users = User.all
  erb :index
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
