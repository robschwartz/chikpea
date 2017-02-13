json.extract! session, :id, :location_id, :start_time, :end_time, :date, :ages, :activity, :title, :description, :available_spots, :created_at, :updated_at
json.url session_url(session, format: :json)