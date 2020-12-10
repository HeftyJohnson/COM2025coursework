class Driver < ApplicationRecord
  belongs_to :team
  validates :name, :age, :titles, :wins, presence: true
end
