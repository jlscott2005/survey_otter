
User.create(name: "Vanilla Bear", password: "poop", password_confirmation: "poop")
User.create(name: "Kelsey Otter", password: "boom", password_confirmation: "boom")
User.create(name: "Tony Totter", password: "biggity", password_confirmation: "biggity")
User.create(name: "Calder Cobra", password: "hiss", password_confirmation: "hiss")
User.create(name: "Jarrod Joker", password: "haha", password_confirmation: "haha")

Survey.create(creator_id: 5, title: "What is love?")
Survey.create(creator_id: 1, title: "what did the otter say?")

Question.create(survey_id: 1, question: "Hurt me?")
Question.create(survey_id: 2, question: "Do Otters love hot dogs?")

Option.create(question_id: 1, text: "no more")
Option.create(question_id: 1, text: "a little more")
Option.create(question_id: 2, text: "yes")
Option.create(question_id: 2, text: "maybe")
Option.create(question_id: 2, text: "I dunno")

Response.create(taken_survey_id: 1, option_id: 1)
Response.create(taken_survey_id: 2, option_id: 3)

TakenSurvey.create(taker_id: 1, survey_id: 1)
TakenSurvey.create(taker_id: 2, survey_id: 2)
