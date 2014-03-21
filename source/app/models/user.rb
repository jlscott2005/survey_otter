class User < ActiveRecord::Base
  has_secure_password
  has_many :surveys, foreign_key: "creator_id"
  has_many :taken_surveys, foreign_key: "taker_id"
  has_many :reviewed_surveys, through: :taken_surveys, source: :survey
end
