require "./test/test_helper"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"
require "./lib/offset"
require "./lib/encryption"

class EncryptionTest < Minitest::Test
  def setup
    @key_feature = KeyFeature.new
    @today = TodayDate.new
    @today.right_now
    @today.timestamp
    # @offset_calculations = OffsetCalculations.new(@today)
    # @offset_calculations.get_last_four
    @offset = Offset.new
    @offset.calculate_final_key_shift
    @offset.add_to_final_offset_array(@final_a_key)
    @offset.add_to_final_offset_array(@final_b_key)
    @offset.add_to_final_offset_array(@final_c_key)
    @offset.add_to_final_offset_array(@final_d_key)
    message = "Hello World!"
    @encryption = Encryption.new(message, @today, @offset)

  end

  def test_it_exists

    assert_instance_of Encryption, @encryption
  end

  def test_it_has_attributes
    assert_equal "60720", @encryption.date
    assert_equal "12345", @encryption.string_offset_key
    assert_equal @offset, @encryption.offset
    assert_equal @today.date_initiated, @encryption.date

    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @encryption.alphabet
  end

  def test_it_can_encrypt_a_message

    assert_equal "aesch cfklk!", @encryption.encrypt_message("Hello World!")

  end



end
