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

  def update
  @review = Review.find(params[:id])
  @product = @review.product
  @review.review_text = params[:review][:review_text]

  if @review.save
    redirect_to "/products/#{@product.id}"
  else
    render "/reviews/edit"
  end
  end

  def edit
    @review = Review.find(params[:id])
    @product = @review.product
  end

  def destroy
    @review = Review.find(params[:id])
    @product = @review.product
    @review.destroy
    redirect_to "/products/#{@product.id}"
  end

end
