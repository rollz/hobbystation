class FinderController < ApplicationController
  def index
    @products_mint = Product.where(condition: 'mint')
  end

  # def show
  #   @product = Product.find(params[:id])
  # end

  def search_results
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @products = Product.where("name LIKE ?", wildcard_keywords)
    @category = Product.all.categories.find("name LIKE ?", wildcard_keywords)
  end

  def pokemon
    @pokemon = Product.where(category_id: 1).where(condition: 'mint').order(:name)
  end

  def magic
    @magic = Product.where(category_id: 2).where(condition: 'mint').order(:name)
  end

  def yugioh
    @yugioh = Product.where(category_id: 3).where(condition: 'mint').order(:name)
  end
end