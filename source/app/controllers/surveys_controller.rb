get '/surveys' do
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
  @survey = Survey.create(params)
  redirect to '/surveys/#{@survey.id}'
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :"surveys/show"
end

=begin
{"survey"=>
  {"title"=>"blah",
    "questions"=>[
      {"question"=>"asdfgs", "options"=>["adfg", "adfgg"]},
      {"question"=>"jklhg", "options"=>["dsrtjyd", "liukyjdthsr"]}
    ]
  }
}
=end
