class Enigma

  def encrypt(message, key = nil, date = nil)

    message

    if date == nil
      now = Time.now
      now_formatted = now.strftime("%m%d%y")
      date = now_formatted
    else


    if key == nil
      new_key = KeyFeature.new


  end

end
