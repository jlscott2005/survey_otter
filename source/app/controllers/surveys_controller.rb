get '/surveys' do
  @surveys = Survey.all
  redirect to '/'
end

get '/surveys/new' do
    erb :'surveys/new'
end

post '/surveys' do
  @survey = SurveyBuilderParser.create_survey(params)
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




