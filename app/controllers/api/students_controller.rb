class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end
 
 def show
   student_id = params[:id]
   @student = Student.find_by(id: student_id)
   render 'show.json.jubuilder'
 end


end
