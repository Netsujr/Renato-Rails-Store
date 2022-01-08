class Item < ApplicationRecord
  has_many :line_items
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  belongs_to :user, optional: true

  validates :title, :price, :condition, presence: true
  validates :description, length: { maximum: 500, too_long: '%{count} maximum allowed characters.' }
  validates :title, length: { maximum: 140, too_long: '%{count} maximum allowed characters.' }
  validates :price, numericality: { only_integer: true }, length: { maximum: 10 }


  CONDITION = ['New', 'Great', 'Used']

end
