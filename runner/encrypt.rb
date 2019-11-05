require './lib/enigma'

@enigma = Enigma.new
@file = File.open(ARGV[0], "r")

encryption_hash = @enigma.encrypt(@file.read.chomp)
new_file = File.open(ARGV[1], "w")
new_file.write(encryption_hash[:encryption])

puts "Created '#{ARGV[1]}' with the key #{encryption_hash[:key]} and date #{encryption_hash[:date]}"
