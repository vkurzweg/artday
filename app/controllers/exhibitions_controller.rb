class ExhibitionsController < ApplicationController

def index
  @exhibitions = Exhibition.all
  @galleries = @gallery.exhibitions
  @artists = @gallery.artists.exhibitions
end

def new
  @exhibition = Exhibition.new
  @gallery = @gallery.exhibition.new
  @artist = @artist.exhibition.new
end

def create
  @gallery = Gallery.find(params[:gallery_id])
  @exhibition = Exhibition.new exhibition_params
  if @exhibition.save
    redirect_to exhibitions_path, notice: "Thanks for contributing!"
  else
    render 'new'
  end
end

def edit
  @exhibition = Exhibition.find(params[:id])
end

def update
  @exhibition = Exhibition.find(params[:id])
  if @exhibition update_attributes(exhibition_params)
    redirect_to gallery_path(@exhibition.gallery_id)
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
      params.require(:exhibition).permit(:name, :opening, :closing, :description)
    end

end
