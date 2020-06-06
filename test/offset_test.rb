require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/key"
require "./lib/key_feature"
require "./lib/offset"

class OffsetTest < Minitest::Test
  key = Key.new
  key.generate_five_digit_key
  key_feature = KeyFeature.new(key)
  offset = Offset.new(key_feature)
end
