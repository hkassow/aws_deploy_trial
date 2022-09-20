class CartsController < ApplicationController
    def index
        render json: Cart.all, status: :ok
    end

    def show
        render json: Cart.find(params[:id]), status: :found
    end

    def create
        render json: Cart.create!(cart_params), status: :created
    end
    
    def update
        Cart.find(params[:id]).update!(cart_params)
        render json: Cart.find(params[:id]), status: :ok
    end

    def destroy
        Cart.find(params[:id]).destroy
        render json: {message: "Deleted"}, status: :ok
    end

    def checkout
        cart = Cart.find(params[:id])
        order = Order.create(user_id: cart.user_id, active: true)
        cart.cart_order_items.each { |x| x.update!(imageable: order)}
    end

    private

    def cart_params
        params.permit(:user_id)
    end
end
