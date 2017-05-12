class AddIngredientsToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :ingredients, :string
  end
end
