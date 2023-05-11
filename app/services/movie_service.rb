require_relative "../../config/api_config"

class MovieService
	def initialize
    @conn = Faraday.new(url: API_BASE_URL) do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def fetch_movies
    response = @conn.get do |req|
      req.url "/api/v1/movies"
    end
    JSON.parse(response.body)["movies"]
  end
end