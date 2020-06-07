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

  def last_four_array
    last_four = calculations.last_four
    last_four_to_array = last_four.to_s.split(//).map{|num| num.to_i}
  end

  def calculate_final_key_shift
    last_four_array
    a_key = @key_feature.a_key.to_i
    b_key = @key_feature.b_key.to_i
    c_key = @key_feature.c_key.to_i
    d_key = @key_feature.d_key.to_i

    @final_a_key += a_key + last_four_array[0]
    @final_b_key += b_key + last_four_array[1]
    @final_c_key += c_key + last_four_array[2]
    @final_d_key += d_key + last_four_array[3]
  end








end
