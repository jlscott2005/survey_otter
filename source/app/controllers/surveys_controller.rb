get '/surveys' do
  @surveys = Survey.all
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
  @survey = create_survey(params)
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



def create_survey(params)
  survey_params = params[:survey]
  title = survey_params[:title]
  question_hashes = survey_params[:questions]
  formatted_question_hashes = question_hashes.map { |hsh| format_question_hash(hsh) }
  questions = formatted_question_hashes.map { |args| Question.create(args) }
  Survey.create(title: title, questions: questions)
end



def format_question_hash(question_hash)
  question_hash[:options].map! { |option_text| Option.create(text: option_text)}
  return question_hash
end

