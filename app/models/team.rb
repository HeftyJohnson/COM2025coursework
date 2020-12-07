class Team < ApplicationRecord
  has_many :drivers
  validates :name, :country, :budget, :staff, presence: true
end
