class MealsController < ApplicationController

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to @meal
    else
      render 'new'
    end
  end

  def new
    @meal = Meal.new
  end

  def index
    @meals = Meal.all
    @order_item = current_order.order_items.new
  end

  def food_to_go
    @meals = Meal.where("available_now == ?", "true")
  end


  def show
    @meal = Meal.find(params[:id])
    @meal.order_items.each do |oi|
      @order_item = oi
    end
  end



  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update!(meal_params)
    redirect_to @meal
  end

  def destroy
    @meal = Meal.find(params[:id])
    if @meal.destroy
      redirect_to 'index'
    else
      render 'show'
    end

  end

  private

  def meal_params
    params.require(:meal).permit(:name, :price, :active, :image,:quantity,:meal_id,:ingredients)
  end
end
