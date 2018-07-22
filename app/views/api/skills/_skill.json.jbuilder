json.array! @skills.each do|skill|
  json.name skill.name
  json.student_id skill.student_id
end