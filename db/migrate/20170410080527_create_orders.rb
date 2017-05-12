class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :subtotal
      t.integer :delivery
      t.integer :total
      t.integer :status, null: false, default: 0
      t.integer :user_id

      t.timestamps
    end
  end
end
