class AddCustomerNameToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :customer_name, :string
    add_column :orders, :string, :string
  end
end
