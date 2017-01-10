class MealsController < ApplicationController
  def new
    @meal = Meal.new
    1.times {@meal.build_meal_image}
  end


  def create
    @meal = Meal.new(params[:meal])
    if @meal.save
      flash[:notice] = "Successfully added meal"
      redirect_to @meal
    else
      render :action => 'new'
    end
  end

  def edit
    @meal = Meal.find(params[:id])
    3.times { @meal.build_meal_images }
  end

  def update

    @meal = Meal.find(params[:id])
    if @meal.update_attributes(params[:trip])
    flash[:notice] = "Successfully updated meal."
    redirect_to @meal
    else
    render :action => 'edit'
    end
  end
end
