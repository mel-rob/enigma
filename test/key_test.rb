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

end
