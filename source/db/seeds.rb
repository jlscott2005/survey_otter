
User.create(name: "Vanilla Bear", password: "poop", password_confirmation: "poop")
User.create(name: "Kelsey Otter", password: "boom", password_confirmation: "boom")
User.create(name: "Tony Totter", password: "biggity", password_confirmation: "biggity")
User.create(name: "Calder Cobra", password: "hiss", password_confirmation: "hiss")
User.create(name: "Jarrod Joker", password: "haha", password_confirmation: "haha")

Survey.create(creator_id: 5, title: "What is love?")

Question.create(survey_id: 1, question: "Hurt me?")

Option.create(question_id: 1, text: "no more")
Option.create(question_id: 1, text: "a little more")

Response.create(taken_survey_id: 1, option_id: 1)

TakenSurvey.create(taker_id: 1, survey_id: 1)
