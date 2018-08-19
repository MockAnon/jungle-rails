class ReviewsController < ApplicationController
  # def review_params
  #   params.require(:review).permit(
  #   :rating,
  #   :description,
  #   :user
  #   )
  # end
  before_filter :authorize

  def create
    #             takes product no
    @product = Product.find(params[:product_id])
    #             add in product_param
    @review = @product.reviews.create(product_params)
    #             addin you your current user
    @review.user = current_user

    # @review = Review.new(product_params)


    if @review.save
      # redirect_to [:product], notice: 'Category created!'
      redirect_to @product
    else
      render :back
    end

    def delete
      puts "delete this object"
    end




  end

  private

 def product_params
    params.require(:review).permit(
      :rating,
      :description
    )
  end


end