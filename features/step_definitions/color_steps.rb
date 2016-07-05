require 'faraday'

def connection
	Faraday.new(url: 'http://localhost:3000') do |faraday|
		faraday.adapter Faraday.default_adapter # make requests with Net::HTTP
    end
end

When(/^I submit a color$/) do
  @response = connection.get '/pick_a_color/blue'
end

Then(/^I receive a message with my color$/) do
  expect(@response.body).to eq 'You picked: blue'
end
