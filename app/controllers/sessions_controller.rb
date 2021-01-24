class SessionsController < ApplicationController

    # before_action :require_login

    def new

    end


    def create
        redirect_to '/sessions/new' unless params[:name] && !params[:name].empty?
        session[:name] = params[:name]
    end

    def destroy
        session.delete :name
    end
end
  