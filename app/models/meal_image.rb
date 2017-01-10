class MealImage < ApplicationRecord
  belongs_to :meal
  has_attached_file :photo
validates_attachment_presence :photo
end
