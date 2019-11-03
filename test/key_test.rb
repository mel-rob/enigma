require_relative './test_helper'
require './lib/key'

class KeyTest < Minitest::Test

  def test_it_generates_number
    Key.expects(:get_number).returns("12345")
    assert_equal "12345", Key.get_number
  end

  # Why does coverage go from 66% to 100% when running
  # the below test?

  # def test_number_generates
  #   assert_equal "011119", Key.get_number
  # end

end
