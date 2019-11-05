require './lib/enigma'

@enigma = Enigma.new
@file = File.open(ARGV[0], "r")

def write
  encryption_hash = @enigma.encrypt(@file.read.chomp)
  new_file = File.open(ARGV[1], "w")
  new_file.write(encryption_hash[:encryption])

  print "Created '#{ARGV[1]}' "
  print "with the key #{encryption_hash[:key]} and date "
  puts encryption_hash[:date]
end
write
