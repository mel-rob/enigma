require_relative './test_helper'
require './lib/encrypt'
require './lib/shift'

class EncryptTest < Minitest::Test

  def setup
    @encryption = Encrypt.new
  end

  def test_it_exists
    assert_instance_of Encrypt, @encryption
  end

  def test_message_shift
    message = "hello world!"
    key = "02715"
    date = "040895"
    assert_equal "keder ohulw!", @encryption.message_shift(message, key, date)
  end
end
