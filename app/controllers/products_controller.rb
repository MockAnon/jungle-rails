class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    # added in reviews
    # @review = Review.find params[:product]

  end



  # def sold_out
  #   @sold = "<a>SOLD OUT</a>".html_safe
  #   # @sold = "<a>SOLD OUT</a>".html_safe
  #   # if (product.quantity === 0)
  #   #   @sold = "<aside class='sold'> <a>SOLD OUT</a> </aside>".html_safe
  #   # end

  # end

  puts @sold
end
