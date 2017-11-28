class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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
      redirect_to new_products_url
    end
  end

  def update

  end

end
