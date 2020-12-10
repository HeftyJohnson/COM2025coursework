class Driver < ApplicationRecord
  belongs_to :team
  has_many :positions
  validates :name, :age, :titles, :wins, :team, presence: true
end
