class DirectorsController < ApplicationController
    def index
      @directors = Director.all

      render json: @directors, status: :accepted, include: :movies
    end

    def show
      @director = Director.find(params[:id])

      render json: @director, status: :accepted, include: :movies
    end

    def create
      @director = Director.create(name: params[:name])

      render json: @director, status: :created
    end

    def update
      @director = Director.find(params[:id])
      @director.update(name: params[:name])

      render json: @director, status: :accepted
    end

    def destroy
      @director = Director.find(params[:id])
      @director.destroy

      render status: :no_content
    end
end
