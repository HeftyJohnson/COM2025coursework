require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  setup do
    @team = teams(:one)
    @race = races(:one)
  end

  test 'should not save empty entry' do
    entry = Entry.new

    entry.save
    refute entry.valid?
  end

  test 'should save valid entry' do
    entry = Entry.new

    entry.race = @race
    entry.team = @team

    entry.save
    assert entry.valid?
  end
end
