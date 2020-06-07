require "./test/test_helper"
require "./lib/key"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"
require "./lib/offset"

class OffsetTest < Minitest::Test
  def setup
    @key = Key.new
    @key.generate_five_digit_key
    @key_feature = KeyFeature.new(@key)
    @today = TodayDate.new
    @today.right_now
    @today.timestamp
    @offset_calculations = OffsetCalculations.new(@today)
    @offset_calculations.get_last_four
    @offset = Offset.new(@key_feature, @offset_calculations)

  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_has_attributes

    assert_equal @key_feature, @offset.key_feature
    assert_equal @offset_calculations, @offset.calculations
    assert_equal 0, @offset.final_a_key
    assert_equal 0, @offset.final_b_key
    assert_equal 0, @offset.final_c_key
    assert_equal 0, @offset.final_d_key

  end

  def test_it_can_turn_last_four_into_elements_in_array

    assert_equal [4, 4, 0, 0], @offset.last_four_array

  end

  def test_it_can_calculate_final_key_shifts
    # skip
    @offset.calculate_final_key_shift
    assert_equal 16, @offset.final_a_key
    assert_equal 27, @offset.final_b_key
    assert_equal 34, @offset.final_c_key
    assert_equal 45, @offset.final_d_key

  end
end
