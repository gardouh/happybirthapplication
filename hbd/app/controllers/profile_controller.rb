class ProfileController < ApplicationController
	  helper_method :current_user 
	  before_action :set_other , only: [:other]
    before_action :set_friend 
  def my


  end

  def other
    @userprofiles=Userprofile.where(user_id: params[:id] )
    @followers=Friend.where(user_id: params[:id]).count
    @following=Friend.where(friends_id: params[:id]).count
  end

def update
  if @friend.nil?
     new_friend
  else
     @friend.destroy
  end
     if @friend.save    
         redirect_to action: "other", id: @friend.friends_id , notice: ' was successfully updated.' 
     else
        format.html { render :new }
     end
      
      
end



private
  def set_other
      @other = User.find(params[:id])
  end

  def new_friend
      @friend = Friend.new
      @friend.suscribe=true
      @friend.friends_id=params[:id]
      @friend.user_id=current_user.id
      @friend
  end


  def set_friend
  	  @friends = Friend.where(friends_id: params[:id])
  	  @friend  = @friends.find_by(:user_id => current_user.id)

  end



  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end
	
end
