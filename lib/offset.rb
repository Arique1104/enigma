class Offset
 attr_reader :date_today
  def initialize(key_feature_object)
    @date_today = []
    @a_key = key_feature_object.a_key
    @b_key = key_feature_object.b_key
    @c_key = key_feature_object.c_key
    @d_key = key_feature_object.d_key

  end

  def add_key
require "pry"; binding.pry
  end

end
