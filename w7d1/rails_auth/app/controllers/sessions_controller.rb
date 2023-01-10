class SessionsController < ApplicationController

    before_action :require_logged_out, only:[:new, :create]
    before_action :require_logged_in, only: [:destroy]

    def new
        @user = User.new
        render :new
    end
    
    end

    def create
        @user = User.find_by(params[:user][:username], params[:user][:password])
        if @user
            login(@user)
            redirect_to user_url(@user)
        else
            redirect_to new_session_url
    end

    def destroy
        if logged_in?
            logout!
        end
        redirect_to new_session_url
    end
    
end