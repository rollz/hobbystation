class FinderController < ApplicationController
  def index
    @products_mint = Product.where(condition: 'mint')
    # @products_played = Product.where(condition: 'played')
  end
end
