class MapController < ApplicationController
  
  def index
    @spaces = Space.all
  end

end
