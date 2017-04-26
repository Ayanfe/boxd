class OrdersController < ApplicationController

  def create
    @order = current_order
    if @order.order_status_id == 1
      @order.order_status_id = 2
    end
    @order.customer_name = current_user.first_name + ' ' + current_user.last_name
    @order.save
  end

  def show
    @orders = Order.where(:order_status_id == 2)
  end

  def destroy

  end

  def delivered
    @order = Order.find(params[:id])
    @order.order_status_id = 3
  end

private
  def order_params
    params.require(:order).permit(:customer_name, :delivery_address)
  end
end
