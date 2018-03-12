class HomeController < ApplicationController

    def index
        if !user_signed_in?
            redirect_to new_user_session_url
         else 
            
         end
    end
end
