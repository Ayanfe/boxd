class AddAvailableNowToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :available_now, :string
    add_column :meals, :boolean, :string
  end
end
