class Offset
 attr_reader  :today_date,
              :key_feature

  def initialize(key_feature)
    @key_feature = key_feature
    @today_date = []
  end

end
