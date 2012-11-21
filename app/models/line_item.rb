class LineItem < ActiveRecord::Base

  attr_accessible :price, :product_id, :quantity

  belongs_to :cart
  belongs_to :product

  def total
    quantity * self.product.price
  end

end
