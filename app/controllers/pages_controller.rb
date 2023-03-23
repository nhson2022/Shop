class PagesController < ApplicationController
  def home
    @categories = Category.all
    @category = Category.new

    @products = Product.all
    @product = Product.new
  end

  def about
  end
end
