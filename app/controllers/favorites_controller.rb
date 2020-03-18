class FavoritesController < ApplicationController
    
    def index
        favorites=Favorite.all
        render json: favorites
    end

    
    def create
        favorite = Favorite.create(fav_params)
        # byebug
        if favorite.valid?
            render json: favorite
        else
            render json: {error: "Invalid username or babyname"}
        end
    end

    private 
    def fav_params
        params.permit(:user_id, :babyname_id)
    end



end
