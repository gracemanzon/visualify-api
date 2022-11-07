class SnapshotsController < ApplicationController
  def index
    snapshots = Snapshot.all
    render json: snapshots.as_json
  end
end
