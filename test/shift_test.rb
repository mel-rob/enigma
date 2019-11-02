require_relative './test_helper'
require './lib/key'
require './lib/offset'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_initializes_with_key_and_shift
    assert_equal [12, 23, 34, 35], @shift.key
    assert_equal [1, 2, 3, 4], @shift.offset
  end

  def test_it_can_zip_arrays
    assert_equal [[62, 2], [20, 1], [0, 6], [5, 1]], @shift.zip_arrays
  end

  def test_it_can_generate_shift
    assert_equal [12, 14, 45, 33], @shift.generate_shift
  end

  def test_final_shift
    expected = {
                "A" => 1,
                "B" => 2,
                "C" => 3,
                "D" => 4
                }
    assert_equal expected, @shift.final_shift
  end

end
