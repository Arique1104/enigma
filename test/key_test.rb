require "./test/test_helper"
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

  def test_it_can_generate_five_random_numbers
    key = Key.new
    key.generate_five_digit_key

    assert_equal 5, key.five_digit_key.count
  end


end
