require_relative './test_helper'
require './lib/generate_date'

class GenerateDateTest < Minitest::Test

  def test_it_generates_date
   GenerateDate.expects(:date).returns("011119")
   assert_equal "011119", GenerateDate.date
  end

end
