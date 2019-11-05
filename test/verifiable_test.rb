require_relative './test_helper'
require './lib/verifiable'

class VerifiableTest < Minitest::Test

  include Verifiable

  def test_it_can_verify_keys
    assert_equal false, number_verified(nil)
    assert_equal false, number_verified(123)
    assert_equal false, number_verified("123")
    assert_equal false, number_verified("abcde")
    assert_equal true, number_verified("12345")
  end

  def test_it_can_verify_dates
    assert_equal false, date_verified(nil)
    assert_equal false, date_verified(123)
    assert_equal false, date_verified("123")
    assert_equal false, date_verified("abcdef")
    assert_equal false, date_verified("123456")
    assert_equal true, date_verified("011119")
  end

  def test_parse_day
    assert_equal 01, parse_day("011119")
  end

  def test_parse_month
    assert_equal 11, parse_month("011119")
  end

  def test_parse_year
    assert_equal 19, parse_year("011119")
  end

end
