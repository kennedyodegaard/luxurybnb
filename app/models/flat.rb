class Flat < ApplicationRecord
  belongs_to :user
  has_many :users, through: :reservations
  has_many :reservations
  has_many :reviews
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_location_title,
    against: [ :title, :location ],
    using: {
      tsearch: { prefix: true }
    }
end
