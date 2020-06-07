class Enigma
 attr_reader  :encrypted,
              :decrypted
  def initialize
    @encrypted = {}
    @decrypted = {}
  end

end
