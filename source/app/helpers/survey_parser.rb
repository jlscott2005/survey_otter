
module SurveyBuilderParser
	def self.create_survey(params)
	  survey_params = params[:survey]
	  title = survey_params[:title]
	  question_hashes = survey_params[:questions]
	  formatted_question_hashes = question_hashes.map { |hsh| self.format_question_hash(hsh) }
	  questions = formatted_question_hashes.map { |args| Question.create(args) }
	  Survey.create(title: title, questions: questions)
	end

	def self.format_question_hash(question_hash)
	  question_hash[:options].map! { |option_text| Option.create(text: option_text)}
	  return question_hash
	end
end

module TakenSurveyParser
	def self.save_taken_survey(taken_survey, questions_options_hash) # just need options, but get question_id_option_id pairs as params
		questions_options_hash.each do |question_id, option_id|
			taken_survey.responses << Response.create(question_id: question_id, option_id: option_id)
		end
	end
end
