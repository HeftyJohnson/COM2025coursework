class Team < ApplicationRecord
  has_many :drivers
  has_many :entries
  validates :name, :country, :budget, :staff, presence: true
end
