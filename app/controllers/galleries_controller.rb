class GalleriesController < ApplicationController

def index
  @galleries = Gallery.all
end

def show
  @gallery = Gallery.find(params[:id])
  @exhibitions = @gallery.exhibitions
end

def destroy
  @gallery = Gallery.find(params[:id])
  @gallery.destroy
  redirect_to galleries_path, notice: "Gallery removed."
end

end
