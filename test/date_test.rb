require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./lib/date"

class DateTest < Minitest::Test

  def test_it_exists
    date = Date.new
    assert_instance_of Date, date
  end

  #def test_it_has_attributes
  #end

end
