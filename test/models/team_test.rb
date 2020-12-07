require 'test_helper'

class TeamTest < ActiveSupport::TestCase

  test 'should not save empty team' do
    team = Team.new

    team.save
    refute team.valid?
  end

  test 'should save valid team' do
    team = Team.new

    team.name = "My Team"
    team.country = "My Country"
    team.budget = 99
    team.staff = 99

    team.save
    assert team.valid?
  end

end
