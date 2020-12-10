class Position < ApplicationRecord
  belongs_to :driver
  belongs_to :race
  validates :race, :driver, :pos, presence: true
end
