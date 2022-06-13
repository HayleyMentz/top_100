class Api::SongController < ApplicationController
  before_action :set_sub, only: [:show, :update, :destroy]
  def index
     @song = song.all 
     render json: @song
    render json: song.all 

  end

  def show
   @song = song.find(params[:id])
   render json: @song 
  end

  def create
    
    @song = song.new(song_params)
    if @song.save 
      render json: @song
    else
      render json: { errors: @song.errors }, status: :unprocessable_entity
    end

  end

  def update
    @song = song.find(params[:id])
    if @song.update(song_params)
      render json: @song  
    else
      render json: { errors: @song.errors }, status: :unprocessable_entity
    end

  end

  def destroy
 @song = @song.find(params[:id])
 @song.destroy
 render json: { message: "song deleted"}
  end
  private 

  def song_params
    params.require(:song).permit(:title, :length)

  def set_song
    @song = song.find(params[:id])
  end
end
