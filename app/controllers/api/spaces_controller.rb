class Api::SpacesController < ApplicationController

  # GET /spaces
  # GET /spaces.json
  def index
    @spaces = Space.find_by_trend_id(params[:trend_id])
    render json: @spaces , root: false
  end

  # GET /spaces/1
  # GET /spaces/1.json
  def show
    render json: @space
  end

  # POST /spaces
  # POST /spaces.json
  def create
    trend = Trend.find(params[:trend_id])
    if trend.spaces.create(space_params)
      render json: @space, status: :created, location: @space
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spaces/1
  # PATCH/PUT /spaces/1.json
  def update
    @space = space.find(params[:id])
    if @space.update(space_params)
      head :no_content
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spaces/1
  # DELETE /spaces/1.json
  def destroy
    @space.destroy
    head :no_content
  end

  private
  
  def set_space
    @space = space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:url)
  end

end