json.array!(@snack_walls) do |snack_wall|
  json.extract! snack_wall, :id, :title
  json.url snack_wall_url(snack_wall, format: :json)
end
