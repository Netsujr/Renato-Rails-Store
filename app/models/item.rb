# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :user, optional: true
  has_many :cart_items, dependent: :destroy

  mount_uploader :image, ImageUploader
  serialize :image, JSON

  validates :title, :price, :condition, presence: true
  validates :description, length: { maximum: 500, too_long: '%{count} maximum allowed characters.' }
  validates :title, length: { maximum: 140, too_long: '%{count} maximum allowed characters.' }
  validates :price, numericality: { only_integer: true }, length: { maximum: 10 }

  CONDITION = %w[New Great Used].freeze
end
