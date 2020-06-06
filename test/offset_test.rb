require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
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
    offset = Offset.new(key_feature, today)
    assert_instance_of Offset, offset
  end

  def test_it_has_attributes
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    today = TodayDate.new
    today.right_now
    today.timestamp
    offset = Offset.new(key_feature, today)

    assert_equal key_feature, offset.key_feature
    assert_equal today, offset.today
  end
end
