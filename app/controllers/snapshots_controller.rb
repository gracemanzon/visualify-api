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
      artists: params[:artists].map { |artist| artist[:name] },
      genres: params[:genres],
      artist_images: params[:artists].map { |artist| artist[:images] }.map { |image| image[0][:url] },
      artist_popularity: params[:artists].map { |artist| artist[:popularity] },
      artist_followers: params[:artists].map { |artist| artist[:followers][:total] },
      tracks: params[:tracks].map { |track| track[:name] },
      track_artist: params[:tracks].map { |track| track[:artists] }.map { |artists| artists[0][:name] },
      track_popularity: params[:tracks].map { |track| track[:popularity] },
      albums: params[:tracks].map { |track| track[:album] }.map { |album| album[:name] },
      album_images: params[:tracks].map { |track| track[:album] }.map { |album| album[:images] }.map { |image| image[0][:url] },
      recently_played: params[:recently_played].map { |item| item[:track] }.map { |track| track[:name] },
      recently_played_artist: params[:recently_played].map { |item| item[:track] }.map { |track| track[:artists][0][:name] },
      recently_played_album_art: params[:recently_played].map { |item| item[:track] }.map { |track| track[:album] }.map { |album| album[:images] }.map { |image| image[0][:url] },
      recently_played_popularity: params[:recently_played].map { |item| item[:track][:popularity] },
      user_id: current_user.id,
    )

    if snapshot.save
      render json: snapshot.as_json, status: :created
    else
      render json: { error: snapshot.errors.full_messages }
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
    if current_user.id == snapshot.user_id
      snapshot.destroy
      render json: { message: "Snapshot successfully deleted!" }
    else
      render json: { error: snapshot.errors.full_messages }, status: :unauthorized
    end
  end
end
