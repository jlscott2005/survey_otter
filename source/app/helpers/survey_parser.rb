


def create_survey(params)
	survey_params = params[:survey]
	title = survey_params[:title]
	question_hashes = survey_params[:questions]
	formatted_question_hashes = question_hashes.map { |hsh| format_question_hash(hsh) }
	questions = formatted_question_hashes.map { |args| Question.new(args) }
	Survey.new(title: title, questions: questions)
end



def format_question_hash(question_hash)
	question_hash[:options].map! { |option_text| Option.new(text: option_text)}
	return question_hash
end



# class Survey
# 	def initialize(args)
# 		@title = args.fetch(:title)
# 		@questions = args.fetch(:questions)
# 	end
# end

# class Option
# 	def initialize(args)
# 		@text = args.fetch(:text)
# 	end
# end

# class Question
# 	def initialize(args)
# 		@question = args.fetch(:question)
# 		@options = args.fetch(:options)
# 	end
# end

P = {survey: { title: "title",
		questions: 
			[
				{question: "question1", options: ["option1", "option2"]},
				{question: "question2", options: ["option3", "option4"]}
			]
		}	
	}

Q = P[:survey][:questions][0]

# format_question_hash(Q)

# create_survey(P)



