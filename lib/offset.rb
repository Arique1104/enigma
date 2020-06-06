class Offset
attr_reader :key_feature,
            :date,
            :last_four
  def initialize(key_feature, today)
    @key_feature = key_feature
    @date = today
    @last_four = []
  end

  def squared_date
    date_array = @date.date_initiated
# require "pry"; binding.pry
  end




end
