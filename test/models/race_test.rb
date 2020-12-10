require 'test_helper'

class RaceTest < ActiveSupport::TestCase

  setup do
    @track = tracks(:one)
  end

  test 'should not save empty race' do
  race = Race.new

  race.save
  refute race.valid?
end

test 'should save valid race' do
  race = Race.new

  race.name = "My Race"
  race.date = "2020-12-08"
  race.track = @track

  race.save
  assert race.valid?
end
end
