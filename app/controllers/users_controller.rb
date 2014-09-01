class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy, :update]


  def index
    @meals = Meal.all
    @meal = Meal.new
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
  end

  def update
    @user = User.update(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:name)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
