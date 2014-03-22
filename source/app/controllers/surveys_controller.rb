get '/surveys' do
  @surveys = Survey.all
  redirect to '/'
end

get '/surveys/new' do
  if session[:user_id] == nil
    redirect to '/'
  else
    erb :'surveys/new'
  end
end

post '/surveys' do
  @survey = SurveyBuilderParser.create_survey(params)
  @survey.creator = User.find(session[:user_id])
  erb :"surveys/show"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :"surveys/show"
end

get '/surveys/:id/edit' do
  @survey = Survey.find(params[:id])
  erb :'surveys/edit'
end

patch '/surveys' do
 p params

 survey_update = params[:survey][:title]
 questions_update = params[:survey][:questions]
 options_update = params[:survey][:options]
 nil
end




