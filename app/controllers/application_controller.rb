class ApplicationController < ActionController::API
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
       rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
   
        # before_action :authorize
   
    #    def current_user
    #        @current_user ||= User.find_by_id(session[:user_id])
    #    end
   
       private
   
    #    def authorize
    #        render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
    #      end
   
       def render_invalid invalid
           render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
       end
   
       def render_not_found
           render json: {error: "Sorry, we couldn't find that."}, status: :not_found
       end
end
