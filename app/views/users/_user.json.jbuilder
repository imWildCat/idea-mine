json.extract! user, :id, :username, :email, :password_digest, :last_ip, :created_at, :updated_at
json.url user_url(user, format: :json)
