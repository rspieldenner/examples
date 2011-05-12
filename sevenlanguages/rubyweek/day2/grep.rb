def grep(expression, filename)
  count = 0
  IO.foreach(filename) do |line|
    # $. could also be used instead of count
    count = count + 1
    puts "#{count}: #{line}" if line.match(expression)
  end
end

unless ARGV.size == 2
  puts "Usage should be [j]ruby grep.rb <pattern> <filename>"
  exit
end

grep(ARGV[0], ARGV[1])