class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end
 
 def show
   student_id = params[:id]
   @student = Student.find_by(id: student_id)
   render 'show.json.jbuilder'
 end

  def update
    student_id = params[:id]
    @student = Student.find_by(student_id)

    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.short_bio = params[:short_bio] || @student.short_bio
    @student.linkedIn_url = params[:linkedIn_url] || @student.linkedIn_url
    @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
    @student.personal_blog_website_url = params[:personal_blog_website_url] || @student.personal_blog_website_url
    @student.online_resume_url = params[:online_resume_url] || @student.online_resume_url
    @student.github_url = params[:github_url] || @student.github_url
    @student.photo = params[:photo] || @student.photo

      if @student.save
         render "show.json.jbuilder"
      else
        render json: {errors: @student.errors.full_messages}, status: :unprocessable_entity
      end
      
  end

  def destroy
    student_id = params[:id]
    @student = Student.find_by(id: student_id)
    @student.destroy
    render json: {message: "Student successfully destroyed"}
  end

end
