class Api::ArtistController < ApplicationController
  before_action :set_sub, only: [:show, :update, :destroy]
  def index
     @artist = billboard.artist.all 
     render json: @artist
    render json: billboard.artist.all 

  end

  def show
   @artist = billboard.artist.find(params[:id])
   render json: @artist
  end

  def create
    
    @artist = billboard.artist.new(billboard_params)
    if @artist.save 
      render json: @artist
    else
      render json: { errors: @artist.errors }, status: :unprocessable_entity
    end

  end

  def update
    @artist = billboard.artist.find(params[:id])
    if @artist.update(artist_params)
      render json: @artist
    else
      render json: { errors: @artist.errors }, status: :unprocessable_entity
    end

  end

  def destroy
 @artist = @billboard.artist.find(params[:id])
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
