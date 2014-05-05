class PhotosController < ApplicationController
  def create
    @photo = Photo.new(photos_params)
    respond_to do |format|
      if @photo.save
        format.js { render :js => "window.location = '#{root_path}'" }
      else
        format.js {}
      end
    end
  end
  private
  def photos_params
    params.require(:photo).permit(:image,:user_id)
  end
end
