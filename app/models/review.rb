class Review < ApplicationRecord
  validates   :restaurant_id, presence: true
  validates   :rating,        presence: true
  validates   :content,       presence: true
  belongs_to  :restaurant
  validates   :rating,        numericality: { only_integer: true }
  validates   :rating,
              inclusion: {
                in: [0, 1, 2, 3, 4, 5],
                message: 'is not a valid rating'
              }
end
