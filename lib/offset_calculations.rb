class OffsetCalculations
 attr_reader  :date,
              :last_four
  def initialize(today)
    @date = today
    @last_four = 0

  end

  def squared_date
    date_integer = @date.date_initiated[0]
    date_integer * date_integer
  end

end
