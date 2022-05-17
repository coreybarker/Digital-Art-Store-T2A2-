class ApplicationController < ActionController::Base
    include Pundit
    include CurrentCart
    before_action :set_cart

    rescue_from Pundit::NotAuthorizedError, with: :forbidden

    private

    def forbidden
        flash[:alert] = "You are not authorised to perform that action"
        redirect_to root_path
    end
end
