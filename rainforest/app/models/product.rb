class Product < ApplicationRecord

  validates :name, :description, :price, presence: true

  validates_uniqueness_of :name

  validates :price, numericality: {
                                  only_integer: true,
                                  greater_than_or_equal_to: 0.0
                                  }

  has_many :reviews

  def price_in_dollars
    price_in_dollars = price.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end

end
