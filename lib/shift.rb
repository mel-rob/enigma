class Shift

  attr_reader :key, :offset

  def initialize
    @key = Key.new.generate_keys
    @offset = Offset.new.generate_offsets
  end

  def zip_arrays
    @key.zip(@offset)
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
