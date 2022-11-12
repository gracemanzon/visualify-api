class SnapshotsController < ApplicationController
  before_action :authenticate_user

  def index
    @snapshots = current_user.snapshots
    render template: "snapshots/index"
  end

  def show
    @snapshot = Snapshot.find_by(id: params[:id])
    render template: "snapshots/show"
  end

  def create
    snapshot = Snapshot.new(
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      image: params[:image],
      artists: params[:artists],
      tracks: params[:tracks],
      track_popularity: params[:track_popularity],
      genres: params[:genres],
      artist_popularity: params[:artist_popularity],
      artist_followers: params[:artist_followers],
      artist_images: params[:artist_images],
      album_images: params[:album_images],
      recently_played: params[:recently_played],
      track_artist: params[:track_artist],
      recently_played_artist: params[:recently_played_artist],
      recently_played_album_art: params[:recently_played_album_art],
      user_id: current_user.id,
    )

    if snapshot.save
      render json: snapshot.as_json, status: :created
    else
      render json: { error: snapshot.errors.full_messages }, status: :bad_request
    end
  end

  def update
    snapshot = Snapshot.find_by(id: params[:id])
    if current_user.id == snapshot.user_id
      snapshot.title = params[:title] || snapshot.title
      snapshot.image = params[:image] || snapshot.image
      if snapshot.save
        render json: snapshot.as_json, status: :ok
      else
        render json: { error: snapshot.errors.full_messages }, status: :bad_request
      end
    else
      render json: { error: snapshot.errors.full_messages }, status: :unauthorized
    end
  end

  def destroy
    snapshot = Snapshot.find_by(id: params[:id])
    # artist = Artist.find_by(snapshot_id: snapshot.id)
    # song = Song.find_by(snapshot_id: snapshot.id)
    # genre = Genre.find_by(snapshot_id: snapshot.id)
    if current_user.id == snapshot.user_id
      snapshot.destroy
      # artist.destroy
      # song.destroy
      # genre.destroy
      render json: { message: "Snapshot successfully deleted!" }
    else
      render json: { error: snapshot.errors.full_messages }, status: :unauthorized
    end
  end
end
