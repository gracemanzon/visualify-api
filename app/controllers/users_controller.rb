class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.as_json
  end

  def create
    user = User.new(
      name: params["name"],
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"],
    )
    if user.save
      render json: user.as_json, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :bad_request
    end
  end
end
