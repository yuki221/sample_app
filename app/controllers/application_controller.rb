class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
        users_show_path
    end

    private
        def sign_in_required
            redirect_to new_user_session_url unless user_signed_in?
        end

        def image_params
         params.require(:image).permit(:title, :body, :image)
        end
        Refile.secret_key = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :image])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :image])
    end
end
