class CartOrderItemsController < ApplicationController
    def index
        render json: CartOrderItem.all, status: :ok
    end

    def show
        render json: CartOrderItem.find(params[:id]), status: :found
    end

    def create
        render json: CartOrderItem.create!(cart_order_item_params), status: :created
    end
    
    def update
        CartOrderItem.find(params[:id]).update!(cart_order_item_params)
        render json: CartOrderItem.find(params[:id]), status: :ok
    end

    def destroy
        CartOrderItem.find(params[:id]).destroy
        render json: {message: "Deleted"}, status: :ok
    end

    private

    def cart_order_item_params
        params.permit(:imageable_type, :imageable_id, :item_id)
    end
end
