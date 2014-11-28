class Product < ActiveRecord::Base

  validates :name, :condition, :price, :stock_quantity, presence: true

  validates :condition, inclusion: {
    in: %w(mint played),
    message: "Condition must be 'mint' or 'played' not %{value}"
  }
end
