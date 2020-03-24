json.extract! resource, :id, :name, :url, :kind, :priority, :category_id, :user_id, :created_at, :updated_at
json.url resource_url(resource, format: :json)
