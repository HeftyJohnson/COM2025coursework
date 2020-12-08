require 'test_helper'

class DriverTest < ActiveSupport::TestCase

  setup do
    @team = teams(:one)
  end

  test 'should not save empty driver' do
    driver = Driver.new

    driver.save
    refute driver.valid?
  end

  test 'should save valid driver' do
    driver = Driver.new

    driver.name = "My Name"
    driver.age = 1
    driver.titles = 0
    driver.wins = 0
    driver.teams_id = @team

    driver.save
    assert driver.valid?
  end
end
