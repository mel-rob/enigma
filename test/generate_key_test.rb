require_relative './test_helper'
require './lib/generate_key'

class GenerateKeyTest < Minitest::Test

  def test_it_generates_number
    GenerateKey.expects(:number).returns("12345")
    assert_equal "12345", GenerateKey.number
  end

end
