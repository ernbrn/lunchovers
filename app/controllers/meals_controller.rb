class MealsController < ApplicationController
  before_action :find_meal, only: [:show, :destroy, :update]

  def index
    @meals = Meal.all
  end

  def show

  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
  end

  def update
    @meal = Meal.update(meal_params)
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :notes, :value, :user_id)
  end
end
