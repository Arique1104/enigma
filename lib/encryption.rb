class Encryption
 attr_reader  :string_date,
 :date,
 :string_offset_key,
 :offset
  def initialize(today, offset)
    @offset = offset
    @date = today.date_initiated
    @string_date = today.date_initiated[0].to_s
    @string_offset_key = offset.key_feature.key.join
  end

end
