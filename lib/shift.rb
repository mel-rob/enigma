class Shift

  attr_reader :key, :offset

  def initialize
    @key = Key.new.generate_keys
    @offset = Offset.new.generate_offsets
  end

  # methods formerly in Offset/date:
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

  def zip_arrays
    @key.zip(@offset)
  end

  #methods formerly in key:
  def convert_number_to_string
    @random_number.to_s.rjust(5, "0")
  end

  def convert_string_to_array
    convert_number_to_string.each_char.map { |char| Integer(char) }
  end

  def generate_keys
    keys = []
    convert_string_to_array.each_cons(2).map {|number| keys << number }
    a = keys.map { |key| key.join.to_i }
  end


  # add logic to account for 3-digit shift numbers?
  def generate_shift
    zip_arrays.reduce([]) do |acc, array|
     acc << array.sum
    end
  end

  def final_shift
    letters = ["A", "B", "C", "D"]
    numbers = generate_shift
    x = letters.zip(numbers).to_h
  end

end
