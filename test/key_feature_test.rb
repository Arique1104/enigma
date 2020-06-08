require "./test/test_helper"
require "./lib/key"
require "./lib/key_feature"


class KeyFeatureTest < Minitest::Test
  def setup
    @key = Key.new
    @key_feature = KeyFeature.new(@key)
  end

  def test_it_exists
    assert_instance_of KeyFeature, @key_feature
  end

  def test_it_has_attributes
    # This spot deserves a mock & stub
    assert_equal [1, 2, 3, 4, 5], @key_feature.key
    assert_equal "12", @key_feature.a_key
    assert_equal "23", @key_feature.b_key
    assert_equal "34", @key_feature.c_key
    assert_equal "45", @key_feature.d_key

  end

end
