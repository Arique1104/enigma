class KeyFeature
 attr_reader  :a_key,
              :b_key,
              :c_key,
              :d_key
  def initialize(key)
    @a_key = "12"
    @b_key = "23"
    @c_key = "34"
    @d_key = "45"
    # @a_key = "#{key.five_digit_key[0]}#{key.five_digit_key[1]}"
    # @b_key = "#{key.five_digit_key[1]}#{key.five_digit_key[2]}"
    # @c_key = "#{key.five_digit_key[2]}#{key.five_digit_key[3]}"
    # @d_key = "#{key.five_digit_key[3]}#{key.five_digit_key[4]}"

  end

end
