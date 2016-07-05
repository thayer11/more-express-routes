require 'faraday'

def connection
	Faraday.new(url: 'http://localhost:3000') do |faraday|
		faraday.adapter Faraday.default_adapter # make requests with Net::HTTP
    end
end

When(/^I request a number that is too low$/) do
	@response = connection.get '/pickanumber?number=5' 
end

Then(/^I receive the too low message$/) do
	expect(@response.body).to eq 'Too Low'
end

When(/^I request a number that is just right$/) do
	@response = connection.get '/pickanumber?number=7' 
end

Then(/^I receive the correct message$/) do
	expect(@response.body).to eq 'Nailed It!'
end

When(/^I request a number that is too high$/) do
	@response = connection.get '/pickanumber?number=9' 
end

Then(/^I receive the too high message$/) do
	expect(@response.body).to eq 'Too High'
end