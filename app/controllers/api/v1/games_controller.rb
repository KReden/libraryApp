module Api
  module V1
    class GamesController < ApplicationController
      respond_to :json

      def index
        respond_with(Game.all.order("name ASC"))
      end

      def show
        respond_with(Game.find(params[:id]))
      end

      def create
        @game = Game.new(game_params)
        if @game.save
          respond_to do |format|
            format.json { render :json => @game }
          end
        end
      end

      def update
        @game = Game.find(params[:id])
        if @game.update(game_params)
          respond_to do |format|
            format.json { render :json => @game }
          end
        end
      end

      def destroy
        respond_with Game.destroy(params[:id])
      end

      private
      def game_params
        params.require(:game).permit(:name, :director)
      end

    end
  end
end
