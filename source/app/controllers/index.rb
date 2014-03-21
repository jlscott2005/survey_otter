get '/' do
  @surveys = Survey.all
  # @surveys = []
  erb :index
end
