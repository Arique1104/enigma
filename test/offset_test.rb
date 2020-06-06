require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./lib/offset_calculations"
require "./lib/today_date"

require "./lib/offset"

class OffsetTest < Minitest::Test

  def test_it_exists
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    today = TodayDate.new
    today.right_now
    today.timestamp
    offset_calculations = OffsetCalculations.new(today)
    offset_calculations.get_last_four
    offset = Offset.new(key_feature, offset_calculations)
    assert_instance_of Offset, offset
  end
end
