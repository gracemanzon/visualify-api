class SnapshotsController < ApplicationController
  def index
    snapshots = Snapshot.all
    render json: snapshots.as_json
  end

  def show
    snapshot = Snapshot.find_by(id: params[:id])
    render json: snapshot.as_json
  end

  def create
    snapshot = Snapshot.new(
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      image: params[:image],
      user_id: params[:user_id],
    )
    if snapshot.save
      render json: snapshot.as_json, status: :created
    else
      render json: { error: snapshot.errors.full_messages }, status: :bad_request
    end
  end

  def update
    snapshot = Snapshot.find_by(id: params[:id])
    snapshot.title = params[:title] || snapshot.title
    snapshot.image = params[:image] || snapshot.image
    if snapshot.save
      render json: snapshot.as_json, status: :ok
    else
      render json: { error: snapshot.errors.full_messages }, status: :bad_request
    end
  end
end
