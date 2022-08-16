json.extract! student, :id, :rut, :name, :last_name1, :last_name2, :address, :state_id, :course_id, :created_at, :updated_at
json.url student_url(student, format: :json)
