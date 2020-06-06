class Key
 attr_reader :five_digit_key
  def initialize
    @five_digit_key = []
  end

  def generate_five_digit_key
    # 5.times do
    #   num = rand(0..9)
      @five_digit_key << 1
      @five_digit_key << 2
      @five_digit_key << 3
      @five_digit_key << 4
      @five_digit_key << 5
    # end
  end



end
