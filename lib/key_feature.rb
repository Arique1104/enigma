class KeyFeature
 attr_reader  :a_key,
              :b_key,
              :c_key,
              :d_key,
              :key
  def initialize(key)
    @key = key.get_key
    @a_key = "#{@key[0]}#{@key[1]}"
    @b_key = "#{@key[1]}#{@key[2]}"
    @c_key = "#{@key[2]}#{@key[3]}"
    @d_key = "#{@key[3]}#{@key[4]}"
  end

end
