class Track < ApplicationRecord
  has_many :races
  validates :name, :laps, :lapLength, :raceLength, presence: true
end
