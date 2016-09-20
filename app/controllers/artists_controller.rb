class ArtistsController < ApplicationController

def index
  @artists = Artist.all
  @exhibitions = Exhibition.all
end

end
