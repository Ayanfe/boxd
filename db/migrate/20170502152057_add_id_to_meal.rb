class AddIdToMeal < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :meal_id, :integer
  end
end
