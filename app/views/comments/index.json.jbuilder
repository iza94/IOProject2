json.array!(@comments) do |comment|
  json.extract! comment, :id, :textfield, :title
  json.url comment_url(comment, format: :json)
end
