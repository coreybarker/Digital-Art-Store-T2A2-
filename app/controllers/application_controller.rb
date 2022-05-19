class ApplicationController < ActionController::Base
    include Pundit
    include CurrentCart
    before_action :set_cart
    before_action :configure_permitted_parameters, if: :devise_controller?
    rescue_from Pundit::NotAuthorizedError, with: :forbidden

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |user_params|
            user_params.permit({ roles: [] }, :email, :password, :password_confirmation)
        end
    end

    private

    def forbidden
        flash[:alert] = "You are not authorised to perform that action"
        redirect_to root_path
    end
end
