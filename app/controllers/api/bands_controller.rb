class Api::BandsController < ApplicationController

  def index 
      bands = Bands.all
      bands.each do |t|
        t.picture = view_context.image_path t.picture 
      end
      render json: tutorials, only: [:name, :description, :category, :picture], root: false

end