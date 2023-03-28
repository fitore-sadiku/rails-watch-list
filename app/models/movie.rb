class Movie < ApplicationRecord
  validates :title, presence: true
  validates :overview, presence: true
  validates :poster_url, presence: true
  validates :rating, presence: true, inclusion: { in: 0..10 }

  has_many :bookmarks
end
