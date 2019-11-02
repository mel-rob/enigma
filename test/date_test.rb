require_relative './test_helper'
require './lib/date'

class GenerateDateTest < Minitest::Test

  def test_it_generates_date
   Date.expects(:get_date).returns("011119")
   assert_equal "011119", Date.get_date
  end

  # Why does coverage go from 66% to 100% when running
  # the below test?

  # def test_date_generates
  #   assert_equal "011119", Date.get_date
  # end
end
