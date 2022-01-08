# frozen_string_literal: true

class Item < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  has_many :line_items
  belongs_to :user, optional: true

  mount_uploader :image, ImageUploader
  serialize :image, JSON

  validates :title, :price, :condition, presence: true
  # validates :description, length: { maximum: 500, too_long: '%{count} maximum allowed characters.' }
  # validates :title, length: { maximum: 140, too_long: '%{count} maximum allowed characters.' }
  # validates :price, numericality: { only_integer: true }, length: { maximum: 10 }

  CONDITION = %w[New Great Used].freeze

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line items present')
      throw :abort
    end
  end
end
