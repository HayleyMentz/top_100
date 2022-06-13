class Api::BillboardController < ApplicationController
  before_action :set_sub, only: [:show, :update, :destroy]
  def index
     @billboard = billboard.all 
     render json: @billboard
    render json: billboard.all 

  end

  def show
   @billboard = billboard.find(params[:id])
   render json: @billboard
  end

  def create
    
    @billboard = billboard.new(billboard_params)
    if @billboard.save 
      render json: @billboard
    else
      render json: { errors: @billboard.errors }, status: :unprocessable_entity
    end

  end

  def update
    @billboard = billboard.find(params[:id])
    if @billboard.update(billboard_params)
      render json: @billboard 
    else
      render json: { errors: @billboard.errors }, status: :unprocessable_entity
    end

  end

  def destroy
 @billboard = @billboard.find(params[:id])
 @billboard.destroy
 render json: { message: "billboard deleted"}
  end
  private 

  def billboard_params
    params.require(:billboard).permit(:genre, :topArtist, :picture)

  def set_billboard
    @billboard = billboard.find(params[:id])
  end
end
