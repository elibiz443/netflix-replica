class MoviesController < ApplicationController
  def index
    our_movies = MovieService.new.fetch_movies
    @pagy_a, @movies = pagy_array(our_movies, items: 6)

    @search = params['search']
    if @search.present?
      @title = @search['title']

      if @title.present?
        @movies = our_movies.select { |movie| movie["title"].downcase.include?(@title.downcase) }
        if @movies.present?
          flash[:notice] = "Below are your movies"
          # redirect_to movies_path
        else
          flash[:warning] = "The movie doesn't exist!"
          # redirect_to movies_path
        end
      else
        @movies = our_movies.select { |movie| movie["title"] == @title }
        flash[:alert] = "You provided null value!"
        # redirect_to movies_path
      end
    end
  end
end
