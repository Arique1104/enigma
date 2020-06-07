class Encryption
 attr_reader  :string_date,
 :string_offset_key,
 :offset
  def initialize(today, offset)
    @string_date = today.date_initiated[0].to_s
    @string_offset_key = offset.key_feature.key.join
    @offset = offset
  end

end
