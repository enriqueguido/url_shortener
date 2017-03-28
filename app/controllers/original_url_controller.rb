class OriginalUrlController < ApplicationController

  def index
    @url = Url.all

  end

  def new
    @new_url = Url.new
  end

  def create
  end



end
