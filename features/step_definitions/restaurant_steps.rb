require 'faraday'

def connection
	Faraday.new(url: 'http://localhost:3000') do |faraday|
		faraday.adapter Faraday.default_adapter # make requests with Net::HTTP
    end
end

When(/^I request a taco (\d+)$/) do |taco_index|
	@response = connection.get "/tacos/#{taco_index}"  
end

Then(/^I receive a taco ([\w\s]+)$/) do |taco_name|
	expect(@response.body).to eq taco_name
end

When(/^I request a burger (\d+)$/) do |burger_index|
	@response = connection.get "/burgers/#{burger_index}"  
end

Then(/^I receive a burger ([\w\s]+)$/) do |burger_name| 
	expect(@response.body).to eq burger_name
end
