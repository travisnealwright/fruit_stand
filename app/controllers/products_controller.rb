class ProductsController < ApplicationController

  def index
    @products = Product.all
    @cart = Cart.find_or_create_by_id(session[:cart_id])
    session[:cart_id] ||= @cart.id
  end

end
