require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"
require "./lib/offset"

class OffsetCalculationsTest < Minitest::Test

  def test_it_exists
    today = TodayDate.new
    today.right_now
    today.timestamp
    offset_calculations = OffsetCalculations.new(today)
    assert_instance_of OffsetCalculations, offset_calculations
  end

  def test_it_has_attributes
    today = TodayDate.new
    today.right_now
    today.timestamp
    offset_calculations = OffsetCalculations.new(today)
    
    assert_equal today, offset_calculations.date
  end

end
