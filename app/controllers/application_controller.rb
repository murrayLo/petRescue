class ApplicationController < ActionController::Base

    #below code is to address an issue wherer username was not captured on registration
    #taken from 
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end
end
