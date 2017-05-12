class Meal < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :order_items

  validates :price, presence: true
  validates :name, presence: true
  validates :active, presence: true
  validates :image, presence: true
  validates :ingredients, presence: true

  default_scope { where(active: true) }
end
