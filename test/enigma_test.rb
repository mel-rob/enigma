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

    assert_equal 12, @enigma.encrypt(message)[:encryption].length
    assert_equal String, @enigma.encrypt(message)[:encryption].class
    assert_equal true, @enigma.encrypt(message)[:encryption].include?("!")
  end

  def test_it_can_encrypt_with_incorrect_key_and_date
    message = "hello world!"
    key = "123"
    date = 123

    assert_equal 5, @enigma.encrypt(message, key, date)[:key].length
    assert_equal String, @enigma.encrypt(message, key, date)[:key].class

    assert_equal 6, @enigma.encrypt(message, key, date)[:date].length
    assert_equal String, @enigma.encrypt(message, key, date)[:date].class

    assert_equal 12, @enigma.encrypt(message, key, date)[:encryption].length
    assert_equal String, @enigma.encrypt(message, key, date)[:encryption].class
    assert_equal true, @enigma.encrypt(message, key, date)[:encryption].include?("!")
  end
end
