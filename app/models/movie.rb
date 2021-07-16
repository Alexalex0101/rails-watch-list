class Movie < ApplicationRecord
  # has_many: bookmarks
  validates :title, uniqueness: true, presence: true
end

# validate uniqueness
# movie has many bookmarks
