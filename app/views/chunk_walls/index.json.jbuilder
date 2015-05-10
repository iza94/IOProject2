json.array!(@chunk_walls) do |chunk_wall|
  json.extract! chunk_wall, :id, :title
  json.url chunk_wall_url(chunk_wall, format: :json)
end
