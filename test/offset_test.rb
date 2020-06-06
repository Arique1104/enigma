require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"
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

  def test_it_has_attributes
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    today = TodayDate.new
    today.right_now
    today.timestamp
    offset_calculations = OffsetCalculations.new(today)
    offset_calculations.get_last_four
    offset = Offset.new(key_feature, offset_calculations)

    assert_equal key_feature, offset.key_feature
    assert_equal offset_calculations, offset.calculations
    assert_equal 0, offset.final_a_key
    assert_equal 0, offset.final_b_key
    assert_equal 0, offset.final_c_key
    assert_equal 0, offset.final_d_key

  end
end
