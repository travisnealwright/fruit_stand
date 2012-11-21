class RemoveCartColumns < ActiveRecord::Migration
  def up
    remove_column(:carts, :item)
    remove_column(:carts, :total_cents)
  end

  def down
    #destructive migration
  end
end
