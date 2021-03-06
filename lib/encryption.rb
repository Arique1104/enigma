class Encryption
  attr_reader :date,
              :message,
              :offset,
              :key_string,
              :alphabet


    def initialize(message, key_feature = nil, offset = nil)
      @message = message
      @key_feature = key_feature
      @offset = offset
      @date = offset.date
      @key_string = key_feature.get_key.join
      @alphabet = ("a".."z").to_a << " "
    end

  def set_date
    if @date == nil
        generate_date = @offset.get_date
        @date = generate_date.date_initalized[0]
        require "pry"; binding.pry
    else
      @date = offset.date
    end
  end

def set_key
  if @key_feature == nil
    computer_key = KeyFeature.new
    key_array = computer_key.generate_five_digit_key
    new_key = key_array.join
    @key_feature = new_key
  else
    @key_feature = key_feature.get_key.join
  end

end

def encrypt_message(message)
# Turn message into array
    message_array = message.downcase.split(//)
# Turn array elements into keys and values into index number to create an array of hashes
    array_of_hashes = []
    message_array.map do |letter|
      letter_index = @alphabet.index(letter)
        hash = {letter => letter_index}
        array_of_hashes << hash
      end

# Add or transform values based on offset key
  count = 0
  rotation_key_array = []
  array_of_hashes.each do |hash|
    hash.each do |letter, index|
      if count == 0
          if index == nil
            hash[letter] = letter
            count += 1
            rotation_key_array << hash
          else
            hash[letter] += @offset.final_a_key
            count += 1
            rotation_key_array << hash
          end
      elsif count == 1
          if index == nil
            hash[letter] = letter
            count += 1
            rotation_key_array << hash
          else
            hash[letter] += @offset.final_b_key
            count += 1
            rotation_key_array << hash
          end
      elsif count == 2
          if index == nil
            hash[letter] = letter
            count += 1
            rotation_key_array << hash
          else
            hash[letter] += @offset.final_c_key
            count += 1
            rotation_key_array << hash
          end
      else count == 3
          if index == nil
            hash[letter] = letter
            count -= 3
            rotation_key_array << hash
          else
            hash[letter] += @offset.final_d_key
            count -= 3
            rotation_key_array << hash
          end
        end
      end
    end
    encryption_key_array = []
    rotation_key_array.each do |hash|
      hash.each do |letter, rotation|
      if rotation != letter
        encrypted_letter = @alphabet.rotate(rotation)[0]
        hash[letter] = encrypted_letter
        encryption_key_array << hash
      else
        encryption_key_array << hash
      end
    end
  end
  encrypted_message = encryption_key_array.flat_map do |hash|
    hash.values
  end
  print_encrypted_message = encrypted_message.join
  end

end
