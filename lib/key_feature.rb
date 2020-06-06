class KeyFeature
 attr_reader :five_digit_key,
              :a_key,
              :b_key,
              :c_key,
              :d_key
  def initialize
    @five_digit_key = []
    @a_key = []
    @b_key = []
    @c_key = []
    @d_key = []

  end

  def generate_random_key_numbers
    5.times do
      key = rand(0..9)
      @five_digit_key << key
    end
  end

  def assign_keys_numbers
    @a_key << "#{@five_digit_key[0]}#{@five_digit_key[1]}"
    @b_key << "#{@five_digit_key[1]}#{@five_digit_key[2]}"
    @c_key << "#{@five_digit_key[2]}#{@five_digit_key[3]}"
    @d_key << "#{@five_digit_key[3]}#{@five_digit_key[4]}"

  end



end
