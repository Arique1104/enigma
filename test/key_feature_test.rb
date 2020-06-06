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

end
