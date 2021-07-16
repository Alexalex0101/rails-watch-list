class Movie < ApplicationRecord
  # has_many: bookmarks
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

# validate uniqueness
# movie has many bookmarks
