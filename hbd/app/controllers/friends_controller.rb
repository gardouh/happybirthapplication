class FriendsController < ApplicationController
	before_action :set_user
   helper_method :current_user 

  def suscribe
  end

  def notsuscribe

  end


  private

   def set_user
   		@all=User.all
   end

    def current_user
      return unless session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end

    def logged_in?
      !!session[:user_id]
    end
end
