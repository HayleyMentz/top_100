class Api::PagesController < ApplicationController
  def index
    @page = page.all 
    render json: @page
   render json: page.all 

 end

 def show
  @page = page.find(params[:id])
  render json: @page 
 end

 def create
   
   @page = page.new(page_params)
   if @page.save 
     render json: @page
   else
     render json: { errors: @page.errors }, status: :unprocessable_entity
   end

 end

 def update
   @page = page.find(params[:id])
   if @page.update(page_params)
     render json: @page  
   else
     render json: { errors: @page.errors }, status: :unprocessable_entity
   end

 end

 def destroy
@page = @page.find(params[:id])
@page.destroy
render json: { message: "page deleted"}
 end
 private 

 def page_params
   params.require(:page).permit(:title, :body)

 def set_song
   @song = song.find(params[:id])
 end
end
