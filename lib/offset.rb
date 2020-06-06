class Offset
attr_reader :key_feature,
:calculations,
:final_a_key,
:final_b_key,
:final_c_key,
:final_d_key

  def initialize(key_feature, offset_calculations)
    @key_feature = key_feature
    @calculations = offset_calculations
    @final_a_key = 0
    @final_b_key = 0
    @final_c_key = 0
    @final_d_key = 0
  end

  def last_four_to_array
    last_four = calculations.last_four
    last_four_array = last_four.to_s.split(//).map{|num| num.to_i}
  end

  def calculate_final_shift
  end








end
