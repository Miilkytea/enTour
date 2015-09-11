class Api::SpacesController < ApplicationController


  # GET /spaces.json
  def index
    @spaces = Space.all
    @spaces_data = []
    @spaces.each do |space|
      new_field = {"city" => City.find(space.city_id).name}
      space = JSON::parse(space.to_json).merge(new_field)
      @spaces_data << space
    end
    render json: @spaces_data , root: false
  end

  # GET /spaces/1.json
  def show
    render json: @space
  end

 
  # POST /spaces.json
  def create
    @space = Space.create(params[space_params])
    if @space.save(space_params)
      render json: @space, status: :created, location: @space
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /spaces/1.json
  def update
    @space = space.find(params[:id])
    if @space.update(space_params)
      head :no_content
    else
      render json: @space.errors, status: :unprocessable_entity
    end
  end


  # DELETE /spaces/1.json
  def destroy
    @space= space.destroy
    head :no_content
  end

  private
  
  def set_space
    @space = space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :address, :email, :website, :latitude, :longitude)
  end
end