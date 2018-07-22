class Api::EducationsController < ApplicationController

   def show
     education_id = params[:id]
     @education = Education.find_by(id: education_id)
     render 'show.json.jubuilder'
   end

   def create
     
     @education = Education.new(
       name: params[:name],
       description: params[:description], 
       url: params[:url], 
       screenshot: params[:screenshot], 
       )
       if @education.save
         render "show.json.jbuilder"
       else
         render json: {errors: @education.errors.full_messages}, status: :unprocessable_entity
       end
     end

  def update
    education_id = params[:id]
    @education = Education.find_by(education_id)

    @education.name = params[:name] || @education.name
    @education.description = params[:description] || @education.description
    @education.url = params[:url] || @education.url
    @education.screenshot = params[:screenshot] || @education.screenshot
    

      if @education.save
         render "show.json.jbuilder"
      else
        render json: {errors: @education.errors.full_messages}, status: :unprocessable_entity
      end
        
    end

    def destroy
      education_id = params[:id]
      @education = Education.find_by(id: education_id)
      @education.destroy
      render json: {message: "Education successfully destroyed"}
    end

end
