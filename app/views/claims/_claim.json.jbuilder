json.extract! claim, :id, :municipality_id, :status, :claim_number, :claim_description, :created_at, :updated_at
json.url claim_url(claim, format: :json)
