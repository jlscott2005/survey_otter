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
  @survey.update(creator: User.find(session[:user_id]))
  erb :"surveys/show"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  if session[:user_id] == nil
    redirect to '/'
  else
    erb :"surveys/show"
  end
end

get '/surveys/:id/edit' do
  @survey = Survey.find(params[:id])
  if session[:user_id] && session[:user_id] == @survey.creator.id
    erb :'surveys/edit'
  else
    redirect to '/'
  end
end

patch '/surveys' do

  survey_arr = params[:survey][:title].to_a.pop
  survey = Survey.find(survey_arr[0])
  survey.update(title: survey_arr[1])

  questions_update = params[:survey][:questions].pop.to_a
  questions_update.each do |question_arr|
    Question.find(question_arr[0]).update(question: question_arr[1])
  end

  options_update = params[:survey][:options].pop.to_a
  options_update.each do |option_arr|
    Option.find(option_arr[0]).update(text: option_arr[1])
  end

  redirect to "/surveys/#{survey.id}"
end

# get '/surveys/:id/take' do
#   @survey = Survey.find(params[:id])
#   if session[:user_id] == nil
#     redirect to '/'
#   else
#     erb :"surveys/show"
#   end
# end



