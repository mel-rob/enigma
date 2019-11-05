require_relative 'generatedate'
require_relative 'key'
require_relative 'shift'
require_relative 'encrypt'
require_relative 'decrypt'
require_relative 'verifiable'

class Enigma
  include Verifiable

  def initialize
    @date = GenerateDate.get_date
    @key = Key.get_number
    @encrypt = Encrypt.new
    @decrypt = Decrypt.new
  end

  def encrypt(message, key = nil, date = nil)
    key = @key unless number_verified(key)
    date = @date unless date_verified(date)
    {
      encryption: @encrypt.message_shift(message, key, date),
      key: key,
      date: date
    }
  end

  def decrypt(message, key, date = nil)
    date = @date unless date_verified(date)
    {
      decryption: @decrypt.message_shift(message, key, date),
      key: key,
      date: date
    }
  end

end
