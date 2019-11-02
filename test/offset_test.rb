require_relative './test_helper'
require './lib/offset'


class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_initializes_with_todays_date
    assert_equal '011119', @offset.date
  end

  def test_it_can_square_date
    assert_equal 123632161, @offset.square_date
  end

  def test_it_can_convert_number_to_string
    assert_equal "123632161", @offset.convert_number_to_string
  end

  def test_it_can_get_last_four_characters
    assert_equal "2161", @offset.get_last_four_characters
  end

  def test_it_can_generate_offsets
    assert_equal [2, 1, 6, 1], @offset.generate_offsets
  end

end
