module ApplicationHelper

  def cents_to_dollars(number)
    sprintf('%.2f', number / 100.0)
  end

end
