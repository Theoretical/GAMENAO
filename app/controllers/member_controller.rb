class MemberController < ApplicationController

  layout "index"

  def login
    # initilize session
    session[:user_id] = nil

    if request.post?
      # authenticate
      user = User.authenticate(params[:username], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to(:controller => 'index')
      else
        flash[:notice] = "Invalid username/password combination"
        redirect_to(:action => 'index')
      end
    end
  end

  def register
    if request.post?
      @user = User.new(params[:user])
      @user.ip = request.env['REMOTE_ADDR']
      @user.save
      debugger
      # create users home directory
      Dir.chdir(RAILS_ROOT + "/users/")
      Dir.mkdir(@user.id.to_s)

      session[:user_id] = @user.id
      redirect_to :controller => "index"
    end
  end

  def logout
    session[:user_id] = nil 
  end

end
