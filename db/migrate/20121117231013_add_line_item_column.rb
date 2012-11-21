class AddLineItemColumn < ActiveRecord::Migration
  def up
    add_column(:line_items, :cart_id, :integer)
  end

  def down
    #constructive migration
  end
end
