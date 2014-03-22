
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


