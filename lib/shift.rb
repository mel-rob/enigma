class Shift

  def self.generate_keys(key)
    key_values = []
    key.chars.each_cons(2).map {|number| key_values << number }
    a = key_values.map { |key| key.join.to_i }
  end

  def self.generate_offsets(date)
    squared_date = date.to_i ** 2
    offsets = squared_date.to_s[-4..-1].chars
    offsets.map { |offset| offset.to_i }
  end

  def self.zip_arrays(key, date)
    keys = generate_keys(key)
    offsets = generate_offsets(date)
    combined = keys.zip(offsets)
  end

  def self.generate_shift(key, date)
    zip_arrays(key, date).reduce([]) do |acc, array|
     acc << array.sum
    end
  end
end
