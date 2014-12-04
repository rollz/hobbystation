class FinderController < ApplicationController
  def index
    @products_mint = Product.where(condition: 'mint')
    @products_played = Product.where(condition: 'played')
    # @products_mint_single = Product.where(products_mint_single:, params[:product])
  end

  def pokemon
    @pokemon = Product.where(category_id: 1).where(condition: 'mint')
  end

  def magic
    @magic = Product.where(category_id: 2).where(condition: 'mint')
  end

  def yugioh
    @yugioh = Product.where(category_id: 3).where(condition: 'mint')
  end
end