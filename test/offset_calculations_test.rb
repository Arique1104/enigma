require "./test/test_helper"
require "./lib/key"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"

class OffsetCalculationsTest < Minitest::Test

  def setup
    @today = TodayDate.new
    @today.right_now
    @today.timestamp
    @offset_calculations = OffsetCalculations.new(@today)

  end

  def test_it_exists
    assert_instance_of OffsetCalculations, @offset_calculations
  end

  def test_it_has_attributes

    assert_equal @today, @offset_calculations.date

    assert_equal 0, @offset_calculations.last_four
  end

  def test_it_can_get_the_squared_number_of_date

    assert_equal 3674784400, @offset_calculations.squared_date

  end

  def test_it_can_take_the_last_four_digits_of_squared_integer

    @offset_calculations.get_last_four

    assert_equal 4400, @offset_calculations.last_four

  end

end
