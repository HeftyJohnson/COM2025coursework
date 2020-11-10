class Position < ApplicationRecord
  belongs_to :drivers
  belongs_to :race
end
