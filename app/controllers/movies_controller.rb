class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  # private

  # Use callbacks to share common setup or constraints between actions.
  # def set_movie
  #   @movie = Movie.find(params[:id])
  # end

  # # Only allow a trusted parameter "white list" through.
  # def movie_params
  #   params.require(:movie).permit(:title, :overview, :rating, :poster_url)
  # end
end
