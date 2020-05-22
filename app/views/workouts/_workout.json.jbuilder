json.extract! workout, :id, :date, :type_of_exercise, :minutes, :created_at, :updated_at
json.url workout_url(workout, format: :json)
