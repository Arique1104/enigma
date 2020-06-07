class Encryption
 attr_reader  :string_date
  def initialize(today, offset)
    @string_date = today.date_initiated[0].to_s
    @offset = offset
    # require "pry"; binding.pry
  end

end
