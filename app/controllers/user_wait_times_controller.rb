class UserWaitTimesController < ApplicationController

    def create
        session[:timing] = true #inactive
        @user_wait_time = UserWaitTime.new(user_id: User.find_by(name: params[:name]).id, store_id: Store.find_by(name: params[:store]).id, done: false)
        @user_wait_time.save
        session[:user_wait_time_id] = @user_wait_time.id
        
        redirect_to root_path
    end

    def update
        
        @user_wait_time = UserWaitTime.find(session[:user_wait_time_id])
        @user_wait_time.update(done: true)
        session[:timing] = nil
        session[:user_wait_time_id] = nil
        
        redirect_to root_path

    end
    

end
