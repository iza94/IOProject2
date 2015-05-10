json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :password_digit, :avatar, :about, :skills
  json.url user_url(user, format: :json)
end
