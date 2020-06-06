require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key_feature"
require "./lib/offset"

class OffsetTest < Minitest::Test

  def test_it_exists
    key_feature = KeyFeature.new
    key_feature.generate_random_key_numbers
    key_feature.assign_keys_numbers
    offset = Offset.new(key_feature)
    assert_instance_of Offset, offset
  end

  def test_it_has_attributes
    key_feature = mock
    key_feature.stub(:generate_random_key_numbers).return([1, 2, 3, 4, 5])
    key_feature.assign_keys_numbers
    offset = Offset.new(key_feature)
    assert_equal [], offset.date_today

    assert_equal @a_key, key_feature.a_key
    assert_equal @b_key, key_feature.b_key
    assert_equal @c_key, key_feature.c_key
    assert_equal @d_key, key_feature.d_key


  end

  def test_it_can_calculate_today_date
    key_feature = KeyFeature.new
    key_feature.generate_random_key_numbers
    key_feature.assign_keys_numbers
    offset = Offset.new(key_feature)
    # require "pry"; binding.pry
  end

end
