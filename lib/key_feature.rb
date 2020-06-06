class KeyFeature
 attr_reader :five_digit_key
  def initialize
    @five_digit_key = []

  end

  def generate_random_numbers
    5.times do
      key = rand(0..9)
      @five_digit_key << key
    end
  end

end
