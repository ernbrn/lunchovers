class AddValueToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :value, :integer
  end
end
