json.array!(@cars) do |car|
  json.extract! car, :id, :year, :make, :model, :description, :price
  json.url car_url(car, format: :json)
end
