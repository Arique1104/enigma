require "./lib/encryptionable"

class Enigma
include Encryptionable
 attr_reader  :encrypted,
              :decrypted
  def initialize
    @encrypted = {}
    @decrypted = {}
  end

  def encrypt(message, key = nil, date = nil)
    key = offset_key
    date = set_date
    @alphabet = ("a".."z").to_a << " "
    message = encrypt_message(message, key, date)
require "pry"; binding.pry
    @encrypted[:encryption] = message
    @encrypted[:key] = key
    @encrypted[:date] = date


  end



end
