json.partial! @student, partial: 'student', as: :student

json.array! @student.skills, partial: 'skill', as: :skill

json.array! @student.experiences, partial: 'experience', as: :experience

json.array! @student.educations, partial: 'education', as: :education

json.array! @student.capstones, partial: 'capstone', as: :capstone