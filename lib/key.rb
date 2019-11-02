class Key

  attr_reader :random_number

  def initialize
    @random_number = rand(99999)
  end

end
