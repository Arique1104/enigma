require "./test/test_helper"
require "./lib/key"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"
require "./lib/offset"
require "./lib/encryption"

class EncryptionTest < Minitest::Test
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
    @offset.calculate_final_key_shift
    @encryption = Encryption.new(@today, @offset)

  end

  def test_it_exists

    assert_instance_of Encryption, @encryption
  end

  def test_it_has_attributes
    assert_equal "60720", @encryption.string_date
    assert_equal "12345", @encryption.string_offset_key
    assert_equal @offset, @encryption.offset
    assert_equal @today.date_initiated, @encryption.date

    expected = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "]
    assert_equal expected, @encryption.alphabet
  end

  def test_it_can_encrypt_a_message
    skip
    assert_equal "asfds asdf!", @encryption.encrypt_message("Hello World!")

  end



end
