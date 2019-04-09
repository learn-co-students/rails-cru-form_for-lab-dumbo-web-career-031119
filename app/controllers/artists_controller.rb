class ArtistsController < ApplicationController
#  before_action :get_by_id, only: [:show, :edit, :update]

  def new
    @artist = Artist.new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  private
    # def get_by_id
    #   @artist = Artist.find(params[:id])
    #   redirect_to @artist
    # end

    def artist_params
      params.require(:artist).permit(:name, :bio)
    end
end
