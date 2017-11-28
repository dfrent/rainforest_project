class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.price = params[:product][:price]
    @product.description = params[:product][:description]

    if @product.save
      redirect_to products_url
    else
      render "/products/new"
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.price = params[:product][:price]
    @product.description = params[:product][:description]

    if  @product.save
      redirect_to products_url
    else
      redirect_to edit_products_url
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end



end
