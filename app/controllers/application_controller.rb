class ApplicationController < ActionController::Base
    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
      
    private
      
    def user_not_authorized
        redirect_back(fallback_location: root_path)
    end

end
