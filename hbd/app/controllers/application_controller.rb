class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
	  helper_method :logged_in?
    helper_method :current_user,:image,:imageparam,:images
 

    def notification
       @notifications = Notification.where(recipient: current_user.id)
    end

    def images(user)
    "http://graph.facebook.com/#{user.uid}/picture?type=large"
    end

    def imageparam
    "http://graph.facebook.com/#{@other.uid}/picture?type=large"
    end
private

    def image
    "http://graph.facebook.com/#{current_user.uid}/picture?type=large"
    end


  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end
end
