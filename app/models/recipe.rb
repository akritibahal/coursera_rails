require 'httparty'

class Recipe
	include HTTParty

	default_options.update(verify: false)

	base_uri 'http://food2fork.com/api/search'
	default_params key: 'a6252715975f196e4d26e6daa783d613'
	format :json

	def self.for term

		get("", query: { q: term})["recipes"]
	end

end
