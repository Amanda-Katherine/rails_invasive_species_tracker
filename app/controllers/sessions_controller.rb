class SessionsController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: #params)
        if #@user.valid? vs .authenticate
            session[:user_id] = @user.id #check params
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end
end