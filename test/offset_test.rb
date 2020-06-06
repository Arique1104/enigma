require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key_feature"
require "./lib/offset"

class OffsetTest < Minitest::Test

  def test_it_exists
    offset = Offset.new
    assert_instance_of Offset, offset
  end

  #def test_it_has_attributes
  #end

end
