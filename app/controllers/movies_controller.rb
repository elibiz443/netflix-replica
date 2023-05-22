class MoviesController < ApplicationController
  def index
    @pagy, @movies = pagy(MovieService.new.fetch_movies.order('created_at ASC'), items: 6)
  end
end
