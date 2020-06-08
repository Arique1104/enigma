require "./test/test_helper"
require "./lib/key"
require "./lib/key_feature"
require "./lib/today_date"
require "./lib/offset_calculations"
require "./lib/offset"
require "./lib/encryption"
require "./lib/enigma"

class EngimaTest < Minitest::Test

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
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_attributes
    expected1 = {}
    assert_equal expected1, @enigma.encrypted

    expected2 = {}
    assert_equal expected2, @enigma.decrypted

  end

  def test_it_can_encrypt_a_message
    expected =  {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, @enigma.encrypt("Hello World!")

  end

end
