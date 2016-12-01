json.extract! proposal, :id, :service_code, :freelancer_login, :status, :created_at, :updated_at
json.url proposal_url(proposal, format: :json)