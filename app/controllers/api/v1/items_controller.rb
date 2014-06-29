module Api
  module V1
    class ItemsController < ApplicationController

      before_filter :cors_preflight_check
      after_filter :cors_set_access_control_headers

      # For all responses in this controller, return the CORS access control headers.

      def cors_set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
        headers['Access-Control-Max-Age'] = "1728000"
      end

      # If this is a preflight OPTIONS request, then short-circuit the
      # request, return only the necessary headers and return an empty
      # text/plain.

      def cors_preflight_check
        if request.method == :options
          headers['Access-Control-Allow-Origin'] = '*'
          headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
          headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
          headers['Access-Control-Max-Age'] = '1728000'
          # render :text => '', :content_type => 'text/plain'
        end
      end

      respond_to :json

      def index
        items = Movie.all.to_a + Game.all.to_a + Book.all.to_a
        respond_with(items)

        # respond_with(Movie.all.order("name ASC"))
      end

      def show
        category = params[:category]

        case category
        when 'movies'
          respond_with(Movie.find(params[:id]))
        when 'games'
          respond_with(Game.find(params[:id]))
        when 'books'
          respond_with(Book.find(params[:id]))
        else
          respond_with("NOPE")
        end

        # respond_with(Movie.find(params[:id]))
      end

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
  end
end
