module Results


  def self.get_options_frequency(survey)
    responses = survey.responses
    options_frequency = Hash.new {|hash, key| hash[key] = 0}
    responses.each do |response|
      options_frequency[response.option_id] += 1
    end
    options_frequency
  end

end
