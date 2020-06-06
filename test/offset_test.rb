require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./lib/offset"

class OffsetTest < Minitest::Test

  def test_it_exists
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    offset = Offset.new(key_feature)

    assert_instance_of Offset, offset

  end

  def test_it_has_attributes
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    offset = Offset.new(key_feature)

    assert_equal [], offset.today_date
    assert_equal key_feature, offset.key_feature
  end

  def test_it_can_gather_today_date
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    offset = Offset.new(key_feature)

    assert_equal ["060620"], offset.date

  end



end
