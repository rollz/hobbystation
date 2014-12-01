class FinderController < ApplicationController
  def index
    @products_mint = Product.where(condition: 'mint')
    @products_played = Product.where(condition: 'played')
    # @products_mint_single = Product.where(products_mint_single:, params[:product])
  end
end
