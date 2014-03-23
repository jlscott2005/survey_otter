class Response < ActiveRecord::Base
  belongs_to :option
  belongs_to :taken_survey
  belongs_to :question
end
