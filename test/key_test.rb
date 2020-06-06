require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"

class KeyTest < Minitest::Test

  def test_it_exists
    key = Key.new
    assert_instance_of Key, key
  end

  def test_it_has_attributes
    key = Key.new
    assert_equal [], key.five_digit_key
  end

end
