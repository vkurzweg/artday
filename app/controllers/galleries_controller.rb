class GalleriesController < ApplicationController

def index
  @galleries = Gallery.all
end

def show
  @gallery = Gallery.find(params[:id])
  @exhibitions = @gallery.exhibitions
end

def edit
  @gallery = Gallery.find(params[:id])
end

def new
  @gallery = Gallery.new
end

def update
  @gallery = Gallery.find(params[:id])
  if @gallery.update_attributes(gallery_params)
    redirect_to galleries_path
  else
    render 'edit'
  end
end

def destroy
  @gallery = Gallery.find(params[:id])
  @gallery.destroy
  redirect_to galleries_path, notice: "Gallery removed."
end

private

def gallery_params
  params.require(:gallery)
    .permit(:name, :address, :zip, :website, :lat, :lng)
end

end
