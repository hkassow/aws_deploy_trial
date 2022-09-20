class OrdersController < ApplicationController
    def index
        render json: Order.all, status: :ok
    end

    def show
        render json: Order.find(params[:id]), status: :found
    end

    def create
        render json: Order.create!(order_params), status: :created
    end
    
    def update
        Order.find(params[:id]).update!(order_params)
        render json: Order.find(params[:id]), status: :ok
    end

    def destroy
        Order.find(params[:id]).destroy
        render json: {message: "Deleted"}, status: :ok
    end

    private

    def order_params
        params.permit(:user_id, :active)
    end
end
