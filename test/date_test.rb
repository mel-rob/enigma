require_relative './test_helper'
require './lib/generatedate'

class GenerateDateTest < Minitest::Test

  def test_it_generates_date
   GenerateDate.expects(:get_date).returns("011119")
   assert_equal "011119", GenerateDate.get_date
  end

end
