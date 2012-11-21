class ChangeColumnNamesForMonetize < ActiveRecord::Migration
  def change
    rename_column :carts, :total, :total_cents
    rename_column :products, :price, :price_cents
    rename_column :line_items, :price, :price_cents
  end

end
