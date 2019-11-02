require_relative './test_helper'
require './lib/key'


class KeyTest < Minitest::Test

  def setup
    @key = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_it_initializes
    assert_equal 37834, @key.random_number
  end

  def test_it_converts_number_to_string
    assert_equal 5, @key.convert_number_to_string.length
    assert_equal "12345", @key.convert_number_to_string
  end

  def test_it_converts_string_to_array
    assert_equal [1, 2, 3, 4, 5], @key.convert_string_to_array
  end

  def test_generate_keys
    assert_equal [12, 23, 34, 45], @key.generate_keys
  end

end
