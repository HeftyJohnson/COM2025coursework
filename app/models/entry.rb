class Entry < ApplicationRecord
  belongs_to :team
  belongs_to :race
  validates :team_id, :race_id, presence: true
end
