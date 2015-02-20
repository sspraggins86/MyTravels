class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  def new
    @photo =Photo.new
  end
  def create
    # Find our post that we should attach to
    #@photo = current_post.photos.new(photo_params)
    #or the standard create:
    @photo = Photo.create(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      render 'new'
    end
  end

  def show

  end

  def photo_params
    params.require(:photo).permit(:image, :caption)
  end
end