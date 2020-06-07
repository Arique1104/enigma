require "date"

class TodayDate
 attr_reader :date_initiated
  def initialize
    @date_initiated = []
  end

  def right_now
    now = Time.now
    now_formatted = now.strftime("%m%d%y").to_i
    # require "pry"; binding.pry
  end

  def timestamp
    @date_initiated << right_now

  end


end
