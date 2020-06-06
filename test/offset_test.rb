require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./.lib/today_date"
require "./lib/offset"

class OffsetTest < Minitest::Test

  def test_it_exists
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    offset = Offset.new(key_feature)
    assert_instance_of Offset, offset
  end
end
