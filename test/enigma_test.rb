require_relative './test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma(arg1, arg2)
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

end
