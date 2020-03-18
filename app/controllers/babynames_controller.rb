class BabynamesController < ApplicationController

    def index
        babynames=Babyname.all
        render json: babynames
    end

    def show
        babyname=Babyname.find_by(id:params[:id])
        render json: babyname
    end

    def random 
        random_name=Babyname.all.sample 
        render json: random_name
    end

    def search
        # byebug
        name=params[:id].downcase.capitalize
        search_result=Babyname.name_search(name)
        render json: search_result
    end

    def search_by_gender
        gender=params[:gender].upcase
        limit=params[:limit].to_i
        search_result=Babyname.search_by_gender(gender,limit)
        render json: search_result
    end

    def search_by_ethnicity
        ethnicity=params[:ethnicity].upcase
        limit=params[:limit].to_i
        search_result=Babyname.search_by_ethnicity(ethnicity,limit)
        render json: search_result
    end

    def sort_rank
        sort_rank=Babyname.sort_rank
        render json: sort_rank
    end

    def sort_name 
        sort_name=Babyname.sort_name
        render json: sort_name
    end

end
