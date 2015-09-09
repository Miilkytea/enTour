class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)
    if @band.save(band_params)
      redirect_to 

    else 'new'
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def show
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    if @band.update_attributes(band_params)
      redirect_to

    else
      render 'edit'
    end
  end
  
  def destroy
    @band = Band.find(params[:id]).destroy
    if @band.destroy
      redirect_to root_path, notice: "Profile removed!"

    else
      flash.now.alert = "Error deleting profile"
      redirect_to root_path
    end
  end
end

def band_params
  params.require(:band).permit(:name, :image, :description, :email, :website)
end   


