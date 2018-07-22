class Api::CapstonesController < ApplicationController

  
  def show
    capstone_id = params[:id]
    @capstone = Capstone.find_by(id: capstone_id)
    render 'show.json.jubuilder'
  end

  def create
    
    @capstone = Capstone.new(
      name: params[:name],
      description: params[:description], 
      url: params[:url], 
      screenshot: params[:screenshot], 
      )
      if @capstone.save
        render "show.json.jbuilder"
      else
        render json: {errors: @capstone.errors.full_messages}, status: :unprocessable_entity
      end
    end

 def update
   capstone_id = params[:id]
   @capstone = Capstone.find_by(capstone_id)

   @capstone.name = params[:name] || @capstone.name
   @capstone.description = params[:description] || @capstone.description
   @capstone.url = params[:url] || @capstone.url
   @capstone.screenshot = params[:screenshot] || @capstone.screenshot
   

     if @capstone.save
        render "show.json.jbuilder"
     else
       render json: {errors: @capstone.errors.full_messages}, status: :unprocessable_entity
     end
       
   end

   def destroy
     capstone_id = params[:id]
     @capstone = Capstone.find_by(id: capstone_id)
     @capstone.destroy
     render json: {message: "Capstone successfully destroyed"}
   end

end