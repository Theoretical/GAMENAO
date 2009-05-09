# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  helper :all # include all helpers, all the time
  protect_from_forgery 

private

  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to(:controller => 'member')
    end
  end

  def is_admin
    unless @user = User.find_by_id(session[:user_id])
      if @user.ugrade == niasdal
        redirect_to(:controller => 'index')
      end
    end
  end

end
