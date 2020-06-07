class KeyFeature
 attr_reader  :a_key,
              :b_key,
              :c_key,
              :d_key,
              :key
  def initialize(key)
    @key = key.five_digit_key
    @a_key = "#{key.five_digit_key[0]}#{key.five_digit_key[1]}"
    @b_key = "#{key.five_digit_key[1]}#{key.five_digit_key[2]}"
    @c_key = "#{key.five_digit_key[2]}#{key.five_digit_key[3]}"
    @d_key = "#{key.five_digit_key[3]}#{key.five_digit_key[4]}"
  end

end
