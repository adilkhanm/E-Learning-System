json.extract! course, :id, :course_name, :course_description, :difficulty, :time_required, :created_at, :updated_at
json.url course_url(course, format: :json)
