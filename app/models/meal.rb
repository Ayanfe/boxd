class Meal < ApplicationRecord
  @meal = Meal.new
  has_one :meal_image, :dependent => :destroy
  accepts_nested_attributes_for :meal_image, :reject_if => lambda { |t| t['trip_image'].nil? }
end
