require "date"
class Offset
attr_reader :key_feature,
:calculations,
:final_a_key,
:final_b_key,
:final_c_key,
:final_d_key,
:final_offset_array,
:date,
:last_four,
:date_initiated

 def initialize
   @last_four = 0
   @date_initiated = []
   @final_offset_array = []
   @final_a_key = 0
   @final_b_key = 0
   @final_c_key = 0
   @final_d_key = 0
 end

  def last_four_array
    last_four_to_array = @last_four.to_s.split(//).map{|num| num.to_i}
  end


  def squared_date
    date_integer = @date_initiated[0]
    date_integer * date_integer
  end

  def get_last_four
    @last_four += squared_date % 10000
  end

 def date
   now = Time.now
   now_formatted = now.strftime("%m%d%y")
   @date = now_formatted
   @date_initiated << now_formatted.to_i

 end
 #
 #
 #
 #
 #
 #
 #  def calculate_final_key_shift
 #    last_four_array
 #    a_key = @key_feature.a_key.to_i
 #    b_key = @key_feature.b_key.to_i
 #    c_key = @key_feature.c_key.to_i
 #    d_key = @key_feature.d_key.to_i
 #
 #    @final_a_key += a_key + last_four_array[0]
 #    @final_b_key += b_key + last_four_array[1]
 #    @final_c_key += c_key + last_four_array[2]
 #    @final_d_key += d_key + last_four_array[3]
 #
 #
 #  end
 #
 #  def add_to_final_offset_array(final_key)
 #    @final_offset_array << final_key
 #
 #  end
 #
 #
 #
 #



end
