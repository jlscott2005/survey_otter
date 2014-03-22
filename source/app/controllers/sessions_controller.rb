post '/sessions' do
  @user = User.check_password(params[:login][:username], params[:login][:password])
  session[:username] = @user.name
  session[:login] = true
  redirect to '/users/'
end
