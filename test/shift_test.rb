require_relative './test_helper'
require './lib/shift'

class ShiftTest < Minitest::Test

  def test_it_can_generate_key_values
    key = "12345"
    assert_equal [12, 23, 34, 45], Shift.generate_keys(key)
   end

   def test_it_can_generate_offset_values
     date = "011119"
     assert_equal [2, 1, 6, 1], Shift.generate_offsets(date)
   end

   def test_it_can_zip_arrays
     key = "12345"
     date = "011119"
     expected = [[12, 2], [23, 1], [34, 6], [45, 1]]
     assert_equal expected, Shift.zip_arrays(key, date)
   end

   def test_it_can_generate_shift
     key = "12345"
     date = "011119"
     expected = [14, 24, 40, 46]
     assert_equal expected, Shift.generate_shift(key, date)
   end
end
