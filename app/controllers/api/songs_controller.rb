module Api
  class SongsController < ApplicationController
    def create
      @song = Song.new(song_params)
      if @song.save
        render json: { message: 'ok!' }, status: 201
      else
        render json: @song.errors, status: 400
      end
    end

    private

    def song_params
      params.require(:song).permit(:title, :audio)
    end
  end
end
