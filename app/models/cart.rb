class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy

  def add_item(item)
    current_item = cart_items.find_by(item_id: item.id)
    if current_item
      current_item.increment(:quantity)
    else
      current_item = cart_items.build(item_id: item.id)
    end
    current_item
  end

  def total_price
    cart_items.to_a.sum { |item| item.total_price }
  end

  def cart_count_over_one
    return total_cart_items if total_cart_items.positive?
  end

  def total_cart_items
    total = cart_items.map(&:quantity).sum
    return total if total.positive?
  end
end
