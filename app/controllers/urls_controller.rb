class UrlsController < ApplicationController
  def index
    @url = Url.all
    @new_url = Url.new
  end

  def new
    @new_url = Url.new
  end

  def create
    Url.create(url_params)
    redirect_to root_path
  end

  def show
    @short_url = Url.find(params[:id])
    redirect_to @short_url.original_url
  end

  private

  def url_params
    params.require(:url).permit(:original_url)
  end
end
