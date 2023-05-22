class MoviesController < ApplicationController
  def index
    @pagy_a, @movies = pagy_array(MovieService.new.fetch_movies, items: 6)
  end
end
