content = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
puts content
puts "Initial dump"

content.each_slice(4) do |a|
  puts a
  puts "Print4"
end