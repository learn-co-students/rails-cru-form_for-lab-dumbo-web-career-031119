class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(s_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find(params[:id])
        @songs = Song.all
        @artist = Artist.find(@song.artist_id)
        @genre = Genre.find(@song.genre_id)
    end

    def edit 
        @song = Song.find(params[:id])
    end

    def update 
        @song = Song.find(params[:id])
        @song.update(s_params(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    private

    def s_params(*args)
        params.require(:song).permit(*args)
    end
end
