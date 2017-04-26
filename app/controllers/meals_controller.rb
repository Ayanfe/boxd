class MealsController < ApplicationController
  def index
    @meals = Meal.all
    @order_item = current_order.order_items.new
  end

  def new
    @meal = Meal.new
  end

  def show
    @meal = Meal.find(params[:id])

  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to @meal
    else
      render 'new'
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
    params.require(:meal).permit(:name, :price, :active, :image)
  end
end
