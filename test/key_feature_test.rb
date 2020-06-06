require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"


class KeyFeatureTest < Minitest::Test

  def test_it_exists
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)
    assert_instance_of KeyFeature, key_feature
  end

  def test_it_has_attributes
    # This spot deserves a mock & stub
    key = Key.new
    key.generate_five_digit_key
    key_feature = KeyFeature.new(key)

    assert_equal "12", key_feature.a_key
    assert_equal "23", key_feature.b_key
    assert_equal "34", key_feature.c_key
    assert_equal "45", key_feature.d_key

  end

  def test_it_can_add_random_numbers_to_approprate_keys
    skip
    key_feature = KeyFeature.new
    key_feature.generate_random_key_numbers
    key_feature.assign_keys_numbers
    assert_equal 1, key_feature.a_key.count
    assert_equal 1, key_feature.b_key.count
    assert_equal 1, key_feature.c_key.count
    assert_equal 1, key_feature.d_key.count

  end

end
