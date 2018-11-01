class Api::SessionsController < ApplicationController
	def create
	    student = Student.find_by(email: params[:email])
	    if student && student.authenticate(params[:password])
	      jwt = JWT.encode(
	        {
	          student_id: student.id, # the data to encode
	          exp: 24.hours.from_now.to_i # the expiration time
	        },
	        "be165b0e3da9a86f0b372d767462778c", # the secret key
	        'HS256' # the encryption algorithm
	      )
	      render json: {jwt: jwt, email: student.email, student_id: student.id}, status: :created
	    else
	      render json: {}, status: :unauthorized
	    end
	  end
end
`