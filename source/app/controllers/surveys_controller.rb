get '/surveys' do
  redirect to '/'
end

get '/surveys/new' do
  # if session[:login]
    erb :'surveys/new'
  # else
    # redirect to '/sessions/new'
  # end
end

post '/surveys' do
  p params
  nil
end
