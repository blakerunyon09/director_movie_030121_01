class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    render json: @movies, status: :accepted
  end

  def create
    @movie = Movie.create(name: params[:name], rating: params[:rating], director_id: params[:director_id])

    redirect_to "http://localhost:3001"
  end
end
