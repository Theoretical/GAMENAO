class UploadController < ApplicationController

  before_filter :authorize
  layout "index"

  def index
  end

end

