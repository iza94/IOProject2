json.array!(@snacks) do |snack|
  json.extract! snack, :id, :title, :URL
  json.url snack_url(snack, format: :json)
end
