json.extract! issue, :id, :issue_id, :creator, :description, :category, :priority, :created_at, :updated_at
json.url issue_url(issue, format: :json)