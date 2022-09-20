class UserController < ApplicationController
    def show
        user = User.find_by(id: session[:user_id])
        if (user) 
            render json: user
        end
        employee = Employee.find_by(id: session[:employee_id])
        if (employee)
            render json: employee
        end
        
    end
    
end
