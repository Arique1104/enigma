require "./test/test_helper"
require "./lib/key_feature"
require "./lib/offset"

class OffsetTest < Minitest::Test
  def setup
    @key_feature = KeyFeature.new
    @key_feature.a_key.to_i
    @key_feature.b_key.to_i
    @key_feature.c_key.to_i
    @key_feature.d_key.to_i
    @offset = Offset.new
    @offset.get_date
    @offset.squared_date
    @offset.get_last_four

  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_has_attributes
    assert_equal [60820], @offset.date_initiated
    assert_equal [], @offset.final_offset_array
    assert_equal 0, @offset.final_a_key
    assert_equal 0, @offset.final_b_key
    assert_equal 0, @offset.final_c_key
    assert_equal 0, @offset.final_d_key

  end

  def test_it_can_turn_last_four_into_elements_in_array

    assert_equal [2, 4, 0, 0], @offset.last_four_array
    assert_equal 2400, @offset.get_last_four

  end

  def test_it_can_calculate_final_key_shifts
    # skip
    @offset.calculate_final_key_shift
    assert_equal 14, @offset.final_a_key
    assert_equal 27, @offset.final_b_key
    assert_equal 34, @offset.final_c_key
    assert_equal 45, @offset.final_d_key

  end

  def test_it_can_add_final_offset_key_to_final_offset_array
    assert_equal [], @offset.final_offset_array

    @offset.add_to_final_offset_array(@final_a_key)
    @offset.add_to_final_offset_array(@final_b_key)
    @offset.add_to_final_offset_array(@final_c_key)
    @offset.add_to_final_offset_array(@final_d_key)

    assert_equal [@final_a_key, @final_b_key, @final_c_key, @final_d_key], @offset.final_offset_array
  end

end
