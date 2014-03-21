class TakenSurvey < ActiveRecord::Base
  has_many :responses
  belongs_to :taker, class_name: "User"
  belongs_to :survey
end
