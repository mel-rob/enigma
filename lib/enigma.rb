require_relative 'date'
require_relative 'key'
require_relative 'shift'
require_relative 'encrypt'
require_relative 'decrypt'

class Enigma

  # attr_reader :date, :key

  def initialize
    @date = Date.get_date
    @key = Key.get_number
    @encrypt = Encrypt.new
    @decrypt = Decrypt.new
  end

  def encrypt(message, key = nil, date = nil)
    # key = @key if key == nil || key.class == Integer || key.length != 5
    key = @key if key == nil || key.count("0123456789") != 5
    # date = @date if date == nil || date.class == Integer || date.length != 6
    date = @date if date == nil || date.count("0123456789") != 6
    # date = @date if date == nil || date.class == Integer || date.length != 6
    {
      encryption: @encrypt.message_shift(message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date = nil)
    date = @date if date == nil || date.class == Integer || date.length != 6
    # use same logic above or add into CLI class?
    {
      decryption: @decrypt.message_shift(message, key, date),
      key: key,
      date: date
    }
  end

end
