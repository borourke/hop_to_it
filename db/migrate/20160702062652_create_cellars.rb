class CreateCellars < ActiveRecord::Migration
  def change
    create_table :cellars do |t|
      t.integer :user_id
      t.integer :beer_id
      t.integer :quantity
      t.integer :amount
    end
  end
end
