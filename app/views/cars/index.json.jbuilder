json.array!(@cars) do |car|
  json.extract! car, :id, :make, :model, :color, :year
  json.url car_url(car, format: :json)
end
