class RenamePriceColumns < ActiveRecord::Migration
  def up
    rename_column(:line_items, :price_cents, :price)
    rename_column(:products, :price_cents, :price)
  end

  def down
  end
end
