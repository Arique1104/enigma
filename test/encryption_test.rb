require "./test/test_helper"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"
require "./lib/offset"
require "./lib/encryption"
#
class EncryptionTest < Minitest::Test
  def setup
    @key_feature = KeyFeature.new
    @key_feature
    @key_feature.a_key.to_i
    @key_feature.b_key.to_i
    @key_feature.c_key.to_i
    @key_feature.d_key.to_i
    @offset = Offset.new
    @offset.get_date
    @offset.calculate_final_key_shift
    @offset.add_to_final_offset_array(@final_a_key)
    @offset.add_to_final_offset_array(@final_b_key)
    @offset.add_to_final_offset_array(@final_c_key)
    @offset.add_to_final_offset_array(@final_d_key)
    @message = "Hello World!"
    @encryption = Encryption.new(@message, @key_feature, @offset)
#
  end
#
  def test_it_exists

    assert_instance_of Encryption, @encryption
  end

  def test_it_has_attributes
    @encryption.set_date
    assert_equal "060820", @encryption.date

    assert_equal "12345", @encryption.key_string
    assert_equal @offset, @encryption.offset

    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @encryption.alphabet
  end

  def test_it_can_encrypt_a_message

    assert_equal "vescb cfelk!", @encryption.encrypt_message(@message)

  end



end
