require 'date'

module Verifiable

  def number_verified(number)
    return false if number == nil

    return false if number.class == Integer

    return false if number.count("0123456789") != 5

    return true
  end

  def date_verified(date)
    return false if date == nil

    return false if date.class == Integer

    return false if date.count("0123456789") != 6

    return false unless Date.valid_date?(parse_year(date), parse_month(date), parse_day(date))

    return true
  end

  def parse_day(date)
    d = date[0..1].to_i
  end

  def parse_month(date)
    m = date[2..3].to_i
  end

  def parse_year(date)
    y = date[4..5].to_i
  end

end
