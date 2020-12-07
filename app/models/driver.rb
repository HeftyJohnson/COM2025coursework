class Driver < ApplicationRecord
  belongs_to :team
  validates :name, :age, :titles, :wins, :teams_id, presence: true
  validates :name, uniqueness: true
end
