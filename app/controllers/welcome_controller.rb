class WelcomeController < ApplicationController

    def index
        if session[:user_wait_time_id].present?
            @user_wait_time = UserWaitTime.find(session[:user_wait_time_id])
        else
            @user_wait_time = UserWaitTime.new
        end
        
    end
    
end
