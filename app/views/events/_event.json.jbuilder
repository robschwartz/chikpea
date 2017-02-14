json.extract! event, :id, :location_id, :start_time, :end_time, :date, :ages_group, :activity, :title, :description, :open_spots, :created_at, :updated_at
json.url event_url(event, format: :json)