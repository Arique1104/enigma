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
    assert_equal today, offset.date

    assert_equal 0, offset.last_four
  end

  def test_it_can_get_the_squared_number_of_date
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    today = TodayDate.new
    today.right_now
    today.timestamp
    offset = Offset.new(key_feature, today)

    assert_equal 3674784400, offset.squared_date

  end

  def test_it_can_take_the_last_four_digits_of_squared_integer
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    today = TodayDate.new
    today.right_now
    today.timestamp
    offset = Offset.new(key_feature, today)
    offset.get_last_four
    assert_equal 4400, offset.last_four

  end
end
