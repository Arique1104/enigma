class Key
 attr_reader :get_key
  def initialize
    @get_key = []
    @get_five = self.generate_five_digit_key
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



end
