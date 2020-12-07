require 'test_helper'

class DriverTest < ActiveSupport::TestCase

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
    driver.teams_id = 1
  end
end
