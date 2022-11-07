class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: artists.as_json
  end

  def show
    artist = Artist.find_by(id: params[:id])
    render json: artist.as_json
  end

  def create
    artist = Artist.new(
      name: params[:name],
      image: params[:image],
      snapshot_id: params[:snapshot_id],
    )

    if artist.save
      render json: artist.as_json, status: :created
    else
      render json: { error: artist.errors.full_messages }, status: :bad_request
    end
  end
end
