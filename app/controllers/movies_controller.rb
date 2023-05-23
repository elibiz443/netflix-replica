class MoviesController < ApplicationController
  def index
    our_movies = MovieService.new.fetch_movies
    @pagy_a, @movies = pagy_array(our_movies, items: 6)

    @search = params['search']
    if @search.present?
      @title = @search['title']

      if @title.present?
        @movies = our_movies.where("title ILIKE ?", "%#{@title}%")
      else
        @movies = our_movies.where(title: @title)
      end
    end
  end
end
