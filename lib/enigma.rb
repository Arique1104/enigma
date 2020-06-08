class Enigma
 attr_reader  :encrypted,
              :decrypted
  def initialize
    @encrypted = {}
    @decrypted = {}
  end

  def encrypt(message, key = nil, date = nil)
    @encrypted[:encryption] = Encryption.new(message, date, key) 

        if key == nil
            computer_key = Key.new
            key_array = computer_key.generate_five_digit_key
            new_key = key_array.join
            @encrypted[:key] = new_key
        else
          @encrypted[:key] = key
        end

        if date == nil
            computer_date = TodayDate.new
            new_date = computer_date.timestamp[0].to_s
            @encrypted[:date] = new_date
        else
        @encrypted[:date] = date
        end

      require "pry"; binding.pry
  end



end
