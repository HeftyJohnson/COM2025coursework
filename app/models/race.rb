class Race < ApplicationRecord
  belongs_to :track
  has_many :entries
  validates :name, :date, :track_id, presence: true
end
