require "date"

class TodayDate
 attr_reader :date_initiated
  def initialize
    @date_initiated = []
  end

  def right_now
    now = Time.now
    now_formatted = now.strftime("%e%m%y")
  end


end
