class Offset

  attr_reader :date

  def initialize
    @date = Date.today.strftime("%d%m%y")
  end

  def square_date
    @date.to_i ** 2
  end

  def convert_number_to_string
    square_date.to_s
  end

  def get_last_four_characters
    convert_number_to_string[-4..-1]
  end

  def generate_offsets
    offsets = get_last_four_characters.chars
    offsets.map { |offset| offset.to_i }
  end

end
