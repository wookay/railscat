json.array!(@cafes) do |cafe|
  json.extract! cafe, :id, :name
  json.url cafe_url(cafe, format: :json)
end
