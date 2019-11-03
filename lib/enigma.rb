require_relative 'date'
require_relative 'key'
require_relative 'shift'
require_relative 'encrypt'

  class Enigma

    attr_reader :date, :key

    def initialize
      @date = Date.get_date
      @key = Key.get_number
      @encrypt = Encrypt.new
    end

    def encrypt(message, key = nil, date = nil)
      key = @key if key == nil || key.class == Integer || key.length != 5
      date = @date if date == nil || date.class == Integer || date.length != 6

      {
        encryption: @encrypt.message_shift(message, key, date),
        key: key,
        date: date
      }

    end
  end
