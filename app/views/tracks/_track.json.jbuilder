json.extract! track, :id, :name, :laps, :lapLength, :raceLength, :created_at, :updated_at
json.url track_url(track, format: :json)
