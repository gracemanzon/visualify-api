class GenresController < ApplicationController
  def index
    genres = Genre.all
    render json: genres.as_json
  end

  def show
    genre = Genre.find_by(id: params[:id])
    render json: genre.as_json
  end
end
