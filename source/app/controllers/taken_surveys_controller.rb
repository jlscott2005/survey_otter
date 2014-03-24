post '/taken_surveys/:survey_id' do #not taken_survey_id. I couldn't get that to work :(
  @survey = Survey.find(params[:survey_id])
  @taken_survey = TakenSurvey.where("survey_id = ? AND taker_id = ?", params[:survey_id], params[:taker_id])[0]
  erb :"taken_surveys/show"
end

get '/taken_surveys/:survey_id/results' do
  @survey = Survey.find(params[:survey_id])
  @options_frequency = Results.get_options_frequency(@survey)
  p @options_frequency
  erb :"taken_surveys/results"



end
