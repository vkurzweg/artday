class ExhibitionsController < ApplicationController

def index
  @exhibitions = Exhibition.all
end

def new
  @exhibition = Exhibition.new
  @gallery = Gallery.new
  @artist = @gallery.artists.new
end

def create
  @exhibition = Exhibition.new exhibition_params
  @artist = Artist.new params.require(:exhibition).require(:artists).permit(:name)
  @gallery = Gallery.new params.require(:exhibition).require(:galleries).permit(:name, :address, :zip, :website)
  @exhibition.gallery = @gallery
  @exhibition.artist = @artist
  if @exhibition.save && @artist.save && @gallery.save
    redirect_to exhibitions_path, notice: "Submission received. Thank you!"
  else
    render 'new'
  end
end

def edit
  @exhibition = Exhibition.find(params[:id])
end

def update
  @exhibition = Exhibition.find(params[:id])
  if @exhibition.update_attributes(exhibition_params)
    redirect_to exhibitions_path
  else
    render 'edit'
  end
end

def destroy
  @exhibition = Exhibition.find(params[:id])
  @exhibition.destroy
  redirect_to exhibitions_path, notice: "Event removed."
end

private

def exhibition_params
      params.require(:exhibition)
        .permit(:name, :opening, :closing, :description, :image, :photo)
    end

end
