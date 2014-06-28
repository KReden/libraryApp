# module Movies
  class MoviesController < ApplicationController
    # respond_to :json

    def index
      # respond_with(Movie.all.order("name ASC"))
      respond_to do |format|
        format.html
      end
    end

    # def show
    #   respond_with(Movie.find(params[:id]))
    # end

    # def create
    #   @movie = Movie.new(movie_params)
    #   if @movie.save
    #     respond_to do |format|
    #       format.json { render :json => @movie }
    #     end
    #   end
    # end

    # def update
    #   @movie = Movie.find(params[:id])
    #   if @movie.update(movie_params)
    #     respond_to do |format|
    #       format.json { render :json => @movie }
    #     end
    #   end
    # end

    # def destroy
    #   respond_with Movie.destroy(params[:id])
    # end

    # private
    # def movie_params
    #   params.require(:movie).permit(:name, :studio)
    # end

  end
# end
