class StaticPagesController < ApplicationController

  before_filter :authenticate_user!, only: [:dashboard]

  def index
  end

  def meals
  end

  def about
  end

  def how
  end

  def plans
  end

  def dashboard

  end

  def delete_account
    render 'destroy'
  end

end
