class Coursera
	include HTTParty

	default_options.update(verify: false)


	base_uri 'https://api.coursera.org/api/catalog.v1/courses'
	default_params fields: "smallIcon,shortName", q: "search"
	format :json

	def self.for term
		get("", query: { query: term})["elements"]
	end
end