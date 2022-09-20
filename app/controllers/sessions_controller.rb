class SessionsController < ApplicationController
    def create
        user = User.find_or_create_by(email: params[:email])
        session[:user_id] = user.id
        render json: user, status: :created
    end
    def create_employee
        employee = Employee.find_by(email: params[:email])

        if employee&.authenticate(params[:password])
            session[:employee_id] = employee.id
            render json: employee, status: :created
        else
            render json: { error: "invalid password or email"}, status: :unauthorized
        end
    end
    def destroy
        session.delete :user_id
        session.delete :employee_id
        head :no_content
    end
end

