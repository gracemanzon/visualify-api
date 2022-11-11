class ArtistsController < ApplicationController
  before_action :authenticate_user

  def index
    @artists = Artist.all
    render template: "artists/index"
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    render template: "artists/show"
  end

  def create
    artist = Artist.new(
      name: params[:name],
      image: params[:image],
      snapshot_id: params[:snapshot_id],
      user_id: current_user.id,
    )

    if artist.save
      render json: artist.as_json, status: :created
    else
      render json: { error: artist.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    artist = Artist.find_by(id: params[:id])
    if current_user.id == artist.snapshot.user_id
      artist.destroy
      render json: { message: "Artist successfully removed from Snapshot!" }
    else
      render json: { error: artist.errors.full_messages }, status: :unauthorized
    end
  end
end
