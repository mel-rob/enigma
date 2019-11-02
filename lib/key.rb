class Key

  attr_reader :random_number

  def initialize
    @random_number = rand(99999)
  end

  def convert_number_to_string
    @random_number.to_s.rjust(5, "0")
  end

  def convert_string_to_array
    convert_number_to_string.chars
  end

  def generate_keys
    keys = []
    convert_string_to_array.each_cons(2) {|number| keys << number }
    keys.map { |key| key.join }
  end

end
