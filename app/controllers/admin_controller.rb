class AdminController < ApplicationController

  before_filter :is_admin
  layout 'admin'

  def index
    @users = User.find(:all)
  end

  def edit
  end

  def show
  end

  def list_users
  end

end
