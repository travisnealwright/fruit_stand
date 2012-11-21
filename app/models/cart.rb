class Cart < ActiveRecord::Base

  attr_accessible :title, :body

  has_many :line_items, as: :itemable, dependent: :destroy

  #monetize :total_cents

  def total
    t = 0
    line_items.each do |line_item|
      t += line_item.total
    end
  t
  end

end
