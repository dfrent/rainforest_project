class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @product = Product.find(params["product_id"])
    product = Product.find(params["product_id"])
    @review = Review.new
    @review.review_text = params[:review][:review_text]
    @review.product = product

    if @review.save
      redirect_to product_url(product)
    else
      render '/products/show'
    end
  end

end
