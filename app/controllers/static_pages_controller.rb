class StaticPagesController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end
end
