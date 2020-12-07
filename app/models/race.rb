class Race < ApplicationRecord
  belongs_to :track
  validates :name, :date, :track_id, presence: true
  validates :name, :date, uniqueness: true
end
