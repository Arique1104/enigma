require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key_feature"

class KeyFeatureTest < Minitest::Test

  def test_it_exists
    key_feature = KeyFeature.new
    assert_instance_of KeyFeature, key_feature
  end

  def test_it_has_attributes
    key_feature = KeyFeature.new

    assert_equal [], key_feature.five_digit_key

    assert_equal [],
    key_feature.a_key

    assert_equal [], key_feature.b_key
  end

  def test_it_can_generate_five_random_numbers
    key_feature = KeyFeature.new

    key_feature.generate_random_numbers

    assert_equal 5, key_feature.five_digit_key.count

  end

end
