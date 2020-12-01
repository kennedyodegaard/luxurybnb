class Flat < ApplicationRecord
  belongs_to :user
  has_many :users, through: :reservations
  has_many :reservations
  has_one_attached :photo
end
