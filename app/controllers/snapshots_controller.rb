class SnapshotsController < ApplicationController
  def index
    snapshots = Snapshot.all
    render json: snapshots.as_json
  end

  def show
    snapshot = Snapshot.find_by(id: params[:id])
    render json: snapshot.as_json
  end
end
