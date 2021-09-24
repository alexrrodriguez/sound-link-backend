class UsersController < ApplicationController

  def index
    user = current_user
    render json: user
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      image: params[:image],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.image = params[:image] || user.image
    if user.save
      render json: user
    else 
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
   
end
