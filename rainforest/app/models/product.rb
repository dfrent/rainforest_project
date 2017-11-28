class Product < ApplicationRecord

  validates :name, :description, :price, presence: true

  validates_uniqueness_of :name

  validates :price, numericality: { only_integer: true }

  has_many :reviews

end
