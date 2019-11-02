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
end
