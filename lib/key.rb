class Key
 attr_reader :five_digit_key
  def initialize
    @five_digit_key = []
  end

  def generate_five_digit_key
    5.times do
      num = rand(0..9)
      @five_digit_key << num
    end
    # require "pry"; binding.pry
  end



end
