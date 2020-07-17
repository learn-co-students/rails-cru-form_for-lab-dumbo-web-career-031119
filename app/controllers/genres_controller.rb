class GenresController < ApplicationController
    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(g_params(:name))
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find(params[:id])
    end

    def edit 
        @genre = Genre.find(params[:id])
    end

    def update 
        @genre = Genre.find(params[:id])
        @genre.update(g_params(:name))
        redirect_to genre_path(@genre)
    end

    private

    def g_params(*args)
        params.require(:genre).permit(*args)
    end
end
