json.extract! maplocation, :id, :address, :latitude, :longitude, :created_at, :updated_at
json.url maplocation_url(maplocation, format: :json)