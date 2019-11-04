require_relative './test_helper'
require './lib/decrypt'
require './lib/shift'

class DecryptTest < Minitest::Test

  def setup
    @decryption = Decrypt.new
  end

  def test_it_exists
    assert_instance_of Decrypt, @decryption
  end

  def test_message_shift
    message = "keder ohulw!"
    key = "02715"
    date = "040895"
    assert_equal "hello world!", @decryption.message_shift(message, key, date)
  end
end
