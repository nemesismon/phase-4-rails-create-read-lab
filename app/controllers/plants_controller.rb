class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    def show
        plant = Plant.find(params[:id])
        if plant
            render json: plant, status: :ok
        else
            render json: {error: "Not found."}, status: :not_found
        end
    end

    def create
        plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
        render json: plant, status: :created
    end

end
