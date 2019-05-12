class PlayersController < ApplicationController
    def index
        if params[:rookie_year] && params[:pick_number]
            render json: Player.find_by(rookie_year: params[:rookie_year], pick_number: params[:pick_number])
        else
            render json: Player.all
        end
    end
    
    def show
        render json: Player.find(params[:id])
    end

    def install

    end
end