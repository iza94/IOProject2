json.array!(@chunks) do |chunk|
  json.extract! chunk, :id, :title, :textfield
  json.url chunk_url(chunk, format: :json)
end
