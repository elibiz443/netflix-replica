class MoviesController < ApplicationController
  def index
    @movies = MovieService.new.fetch_movies
  end
end
