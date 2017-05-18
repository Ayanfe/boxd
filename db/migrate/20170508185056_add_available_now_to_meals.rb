class AddAvailableNowToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :available_now, :boolean
  end
end
