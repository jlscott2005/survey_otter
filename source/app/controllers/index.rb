get '/' do
  @surveys = Survey.all
  @user = {name: "Nothing"}
  erb :index
end
