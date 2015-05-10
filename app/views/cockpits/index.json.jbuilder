json.array!(@cockpits) do |cockpit|
  json.extract! cockpit, :id
  json.url cockpit_url(cockpit, format: :json)
end
