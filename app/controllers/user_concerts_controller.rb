class UserConcertsController < ApplicationController

  def index
    user_concerts = current_user.user_concerts
    render json: user_concerts
  end

  def create
    user_concerts = UserConcert.new(
      user_id: current_user.id,
      name: params[:name],
      venue: params[:venue],
      city: params[:city],
      address: params[:address],
      date: params[:date],
      time: params[:time],
      tickets: params[:tickets],
      image: params[:image]
    )
    if user_concerts.save
      render json: {message: "User Concert Created Successfully"}, status: :created
    else
      render json: { errors: user_concerts.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user_concert = UserConcert.find_by(id: params[:id])
    render json: user_concert
  end

  def update
    user_concert = UserConcert.find_by(id: params[:id])
    user_concert.name = params[:name] || user_concert.name
    user_concert.venue = params[:venue] || user_concert.venue
    user_concert.city = params[:city] || user_concert.city
    user_concert.address = params[:address] || user_concert.address
    user_concert.date = params[:date] || user_concert.date
    user_concert.time = params[:time] || user_concert.time
    user_concert.tickets = params[:tickets] || user_concert.tickets
    user_concert.image = params[:image] || user_concert.image
    if user_concert.save
      render json: user_concert
    else
      render json: { errors: user_concert.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user_concert = UserConcert.find_by(id: params[:id])
    user_concert.destroy
    render json: {message: "User Concert Successfully Deleted"}
  end
end
