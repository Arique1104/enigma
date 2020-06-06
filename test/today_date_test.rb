require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./lib/today_date"

class TodayDateTest < Minitest::Test

  def test_it_exists
    today = TodayDate.new
    assert_instance_of TodayDate, today
  end

  def test_it_has_attributes
    today = TodayDate.new
    assert_equal [], today.date_initiated
  end

  def test_it_can_get_today_date
    today = TodayDate.new

    assert_equal 60620, today.right_now
  end

  def test_it_can_store_the_date
    today = TodayDate.new
    assert_equal [60620], today.timestamp
  end

end
