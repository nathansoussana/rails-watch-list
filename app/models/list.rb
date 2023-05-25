class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  # A list must have a unique name.
  validates :name, presence: true, uniqueness: true
end
