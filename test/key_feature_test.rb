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
  end

end
