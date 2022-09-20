class ItemsController < ApplicationController
    def index
        render json: Item.all, status: :ok
    end

    def show
        render json: Item.find(params[:id]), status: :found
    end

    def create
        render json: Item.create!(item_params), status: :created
    end
    
    def update
        Item.find(params[:id]).update!(item_params)
        render json: Item.find(params[:id]), status: :ok
    end

    def destroy
        Item.find(params[:id]).destroy
        render json: {message: "Deleted"}, status: :ok
    end

    private

    def item_params
        params.permit(:name, :description, :instock, :quantity, :price, :picture)
    end
end
