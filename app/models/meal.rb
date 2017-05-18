class Meal < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :order_items

  validates :price, presence: true
  validates :name, presence: true
  validates :active || :available_now, presence: true
  validates :image, presence: true
  validates :ingredients, presence: true

  def self.search(search)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      all
    end
  end

  default_scope { where(active: true) }


end
