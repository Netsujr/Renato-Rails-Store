# frozen_string_literal: true

module ApplicationHelper

  def cart_count_over_one
    return total_cart_items if total_cart_items > 0
  end

  def cart_has_items
    total = @cart.line_items.map(&:quantity).sum
    return total if total > 0
  end
end
