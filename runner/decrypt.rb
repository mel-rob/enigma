require './lib/enigma'

@enigma = Enigma.new
@file = File.open(ARGV[0], "r")

def write
  ARGV[3] = "" if ARGV[3] == nil
  decryption_hash = @enigma.decrypt(@file.read.chomp, ARGV[2], ARGV[3])
  new_file = File.open(ARGV[1], "w")
  new_file.write(decryption_hash[:decryption])

  print "Created '#{ARGV[1]}' "
  print "with the key #{decryption_hash[:key]} and date "
  puts decryption_hash[:date]
end

write
