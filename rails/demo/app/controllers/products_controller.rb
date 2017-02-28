class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
    @product = Product.create( name: params[:name], description: params[:description])
    puts "\n\n\n\n\n", @product.inspect, "\n\n\n\n\n\n"
    #render :text => @product.inspect
    redirect_to '/products/index'
  end
end
