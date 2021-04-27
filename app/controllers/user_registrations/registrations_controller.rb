class UserRegistrations::RegistrationsController < Devise::RegistrationsController
#User_registration controller being created to allow the customs 'username' param through
    private
    
    def sign_up_params
        params.require(:user).permit(
            :email,
            :password,
            :password_confirmation,
            :username,
        )
    end