json.array!(@posts) do |post|
  json.extract! post, :id, :txtefile, :title
  json.url post_url(post, format: :json)
end
