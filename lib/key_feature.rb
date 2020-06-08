class KeyFeature

 attr_reader :get_key,
              :a_key
              :b_key
              :c_key
              :d_key

  def initialize
    @get_key = []
    self.generate_five_digit_key

    @a_key = nil
    @b_key = nil
    @c_key = nil
    @d_key = nil

  end

  def generate_five_digit_key
    # 5.times do
    #   num = rand(0..9)
      @get_key << 1
      @get_key << 2
      @get_key << 3
      @get_key << 4
      @get_key << 5
    # end
  end

  def a_key
    @a_key = "#{@get_key[0]}#{@get_key[1]}"
  end

  def b_key
    @b_key = "#{@get_key[1]}#{@get_key[2]}"
  end

  def c_key
    @c_key = "#{@get_key[2]}#{@get_key[3]}"
  end

  def d_key
    @d_key = "#{@get_key[3]}#{@get_key[4]}"
  end






end
