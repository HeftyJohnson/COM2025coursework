require 'test_helper'

class TrackTest < ActiveSupport::TestCase

  test 'should not save empty track' do
    track = Track.new

    track.save
    refute track.valid?
  end

  test 'should save valid track' do
    track = Track.new

    track.name = "My Track"
    track.laps = 99
    track.lapLength = 9.9
    track.raceLength = 999.9

    track.save
    assert track.valid?
  end
end
