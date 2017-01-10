class CreateMealImages < ActiveRecord::Migration[5.0]
  def change
    create_table :meal_images do |t|
      t.integer :meal_id

      t.timestamps
    end
  end
end
