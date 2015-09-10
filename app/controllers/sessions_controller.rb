class SessionsController < ApplicationController
  def new
  end

  def create
    band = Band.find_by(email: params[:email])
    if band && band.authenticate(params[:password])
      session[:band_id] = band.id
      redirect_to user_lists_path(band.id), notice: "Logged in!"
    else
      flash.now.alert = 'Invalid login credentials'
      render 'new'
    end
  end

  def destroy
    session.delete(:band_id)
    @current_band = nil
    redirect_to root_path, notice: "Logged out!"
  end
end
