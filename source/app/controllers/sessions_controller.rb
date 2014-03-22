enable :sessions

post '/sessions' do
  @user = User.check_password(params[:login][:username], params[:login][:password])
  if @user
    session[:user_id] = @user.id
    redirect to "/users/#{session[:user_id]}"
  else
    @error = "Not valid password or email"
    erb :index
  end
end

get '/sessions/:id' do
  return 401 unless params[:id].to_i == session[:user_id].to_i
  session.clear
  @surveys = Survey.all
  erb :index
end
