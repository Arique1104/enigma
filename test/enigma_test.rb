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
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt_a_message
    # skip
    expected =  {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }

    assert_equal expected, @enigma.encrypt("Hello World!")

  end

end
