json.extract! item, :id, :title, :price, :description, :condition, :created_at, :updated_at
json.url item_url(item, format: :json)
