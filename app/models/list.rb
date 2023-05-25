class List < ApplicationRecord
  has_many :bookmarks
  # A list must have a unique name.
  validates :name, presence: true, uniqueness: true
end
