class Product < ActiveRecord::Base

  validates :name, :condition, :price, :stock_quantity, presence: true

  validates :condition, inclusion: {
    in: %w(mint played),
    message: "must be 'mint' or 'played' not %{value}"
  }

  validates :price, :stock_quantity, numericality: {
    greater_than_or_equal_to: 0
  }

  validates :price, format: {
    with: /\A\d+(?:\.\d{0,2})?\z/,
    message: "must be 0..2 decimal places."
  }

  validates :stock_quantity, numericality: {
    only_integer: true
  }

  validates :image_filename, allow_blank: true, format: {
    with: %r{\.gif|jpg|png}i,
    message: "must end with .gif, .jpg, or .png"
  }
end
