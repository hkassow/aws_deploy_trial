class UsersController < ApplicationController
    
    def index
        render json: User.all, status: :ok
    end

    def show
        user = User.find_by(id: session[:user_id])
        if (user) 
            render json: user
        end
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end
    
    def update
        User.find(params[:id]).update!(user_params)
        render json: User.find(params[:id]), status: :ok
    end

    def destroy
        User.find(params[:id]).destroy
        render json: {message: "Deleted"}, status: :ok
    end

    private

    def user_params
        params.permit(:email)
    end
end
