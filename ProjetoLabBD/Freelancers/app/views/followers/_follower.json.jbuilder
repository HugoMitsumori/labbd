json.extract! follower, :id, :follower_login, :followed_login, :created_at, :updated_at
json.url follower_url(follower, format: :json)