# frozen_string_literal: true

json.extract! line_item, :id, :item_id, :cart.belong_to, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
