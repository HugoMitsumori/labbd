json.extract! service, :id, :contractor_login, :service_code, :solution_id, :service_name, :start_date, :end_date, :status, :price, :final_score, :created_at, :updated_at
json.url service_url(service, format: :json)