class Position < ApplicationRecord
  belongs_to :driver
  belongs_to :race
  validates :race_id, :drivers_id, :pos, presence: true
end
