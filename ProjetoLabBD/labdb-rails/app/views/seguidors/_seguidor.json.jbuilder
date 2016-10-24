json.extract! seguidor, :id, :login_seguidor, :login_seguido, :created_at, :updated_at
json.url seguidor_url(seguidor, format: :json)