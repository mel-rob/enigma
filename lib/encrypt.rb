class Encrypt

  def initialize
    @alphabet = ("a".."z").to_a << " "
  end

  def message_shift(message, key, date)
    shift = Shift.generate_shift(key, date)
    message.downcase.chars.map do |char|
      letter_location = (char.ord - 97 + shift[0]) % 27
      letter_location = (26 + shift[0]) % 27 if char == " "
      value = @alphabet[letter_location]
      value = char if !@alphabet.include?(char)
      shift.rotate!
      value
    end.join
  end
end
