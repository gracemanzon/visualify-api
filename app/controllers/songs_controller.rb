class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def create
    song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      album: params[:album_art],
      snapshot_id: params[:snapshot_id],
    )

    if song.save
      render json: song.as_json, status: :created
    else
      render json: { error: song.errors.full_messages }, status: :bad_request
    end
  end
end
