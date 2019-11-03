require_relative './test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    @enigma.stubs(:date).returns("011119")
    @enigma.stubs(:key).returns("12345")
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_generate_date
    @enigma.expects(:date).returns("011119")
    assert_equal "011119", @enigma.date
  end

  def test_it_can_generate_key
    @enigma.expects(:key).returns("12345")
    assert_equal "12345", @enigma.key
  end

  def test_it_can_encrypt
    skip
    message = "hello world!"
    key = "02715"
    date = "040895"

    expected = {
                :encryption=>"keder ohulw!",
                :key=>"02715",
                :date=>"040895"
                }

    assert_equal expected, @enigma.encrypt(message, key, date)
  end

  def test_it_can_encrypt_without_key_and_date
    message = "hello world!"
    
    assert_equal "keder ohulw!", @enigma.encrypt(message)
  end

  def test_it_can_encrypt_with_incorrect_key_and_date
    message = "hello world!"
    key = "123"
    date = 123

    assert_equal "keder ohulw!", @enigma.encrypt(message, key, date)
  end


end
