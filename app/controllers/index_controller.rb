class IndexController < ApplicationController
  def index
    @articles = Post.find(:all, :order => 'created_at desc')
  end
end
