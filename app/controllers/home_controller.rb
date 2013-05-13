class HomeController < ApplicationController
  def index
    sleep 1
    @videos = Video.all
    if params[:video_name]
      @current_video = Video.find_by_name(params[:video_name])
    else
      @current_video = Video.first
    end
    respond_to do |format|
      format.html
      format.js
    end
  end
end
