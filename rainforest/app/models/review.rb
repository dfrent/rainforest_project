class Review < ApplicationRecord

  validates :review_text, presence: true

  belongs_to :product

end
