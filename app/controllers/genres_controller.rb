class GenresController < ApplicationController
  before_action :authenticate_user

  def index
    genres = Genre.all
    render json: genres.as_json
  end

  def show
    genre = Genre.find_by(id: params[:id])
    render json: genre.as_json
  end

  def create
    genre = Genre.new(
      title: params[:title],
      snapshot_id: params[:snapshot_id],
    )

    if genre.save
      render json: genre.as_json, status: :created
    else
      render json: { error: genre.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    genre = Genre.find_by(id: params[:id])
    if current_user.id == genre.snapshot.user_id
      genre.destroy
      render json: { message: "Genre successfully removed from Snapshot!" }
    else
      render json: { error: genre.errors.full_messages }, status: :unauthorized
    end
  end
end
