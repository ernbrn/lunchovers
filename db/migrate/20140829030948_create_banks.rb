class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.integer :wallet
      t.integer :savings
      t.integer :total

      t.timestamps
    end
  end
end
