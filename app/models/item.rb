# frozen_string_literal: true

class Item < ApplicationRecord
  before_destroy :not_referenced_by_any_cart_item
  belongs_to :user, optional: true
  has_many :cart_items

  mount_uploader :image, ImageUploader
  serialize :image, JSON

  validates :title, :price, :condition, presence: true
  validates :description, length: { maximum: 500, too_long: '%{count} maximum allowed characters.' }
  validates :title, length: { maximum: 140, too_long: '%{count} maximum allowed characters.' }
  validates :price, numericality: { only_integer: true }, length: { maximum: 10 }

  CONDITION = %w[New Great Used].freeze

  private

  def not_referenced_by_any_cart_item
    unless cart_items.empty?
      errors.add(:base, 'cart items present')
      throw :abort
    end
  end
end
