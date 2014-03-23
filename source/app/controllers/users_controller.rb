get '/users' do
  # @users = User.all
  erb :index
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

post '/users' do
  @user = User.create(name: params[:signup][:username], password: params[:signup][:password], password_confirmation: params[:signup][:password_confirmation])
  if @user.valid?
    session[:user_id] = @user.id
    redirect to '/'
  else
    @surveys = Survey.all
    @errors = @user.errors.messages.to_a.map { |pair| pair.join (' ')}.join(", ")
    erb :index
  end
end
