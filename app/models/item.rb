class Item < ApplicationRecord

  mount_uploader :image, ImageUploader
  serialize :image, JSON
  belongs_to :user, optional: true

  # validates :title, :price, :condition, presence: true
  validates :description, presence: true
  validates :title, presence: true
  validates :condition, presence: true
  validates :price, length: { maximum: 10 }, presence: true

  CONDITION = ['New', 'Great', 'Used']

end
