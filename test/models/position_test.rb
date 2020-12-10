require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  setup do
    @driver = drivers(:one)
    @race = races(:one)
  end

  test 'should not save empty position' do
    position = Position.new

    position.save
    refute position.valid?
  end

  test 'should save valid position' do
    position = Position.new

    position.pos = 1
    position.race = @race
    position.driver = @driver

    position.save
    assert position.valid?
  end
end
