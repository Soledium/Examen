json.extract! course, :id, :start_date, :end_date, :training_plan_id, :state_id, :created_at, :updated_at
json.url course_url(course, format: :json)
