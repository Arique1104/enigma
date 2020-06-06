class Offset
attr_reader :key_feature,
            :date,
            :last_four
  def initialize(key_feature, today)
    @key_feature = key_feature
    @date = today
    @last_four = 0
  end

  def squared_date
    date_integer = @date.date_initiated[0]
    date_integer * date_integer
  end




end
