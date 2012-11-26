class AddNamePriceToCarts < ActiveRecord::Migration
  def change
    change_table :carts do |t|
      #t.string :item
      t.integer :total
    end
  end
end
