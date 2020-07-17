class GenresController < ApplicationController
  def show
    @genre=Genre.find(params[:id])
  end

  def new
  end

  def create
    @genre=Genre.create(params[:genre].permit(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre=Genre.find(params[:id])
  end

  def update
    @genre=Genre.find(params[:id])
    @genre.update(params[:genre].permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

end
