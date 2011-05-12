content = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
puts content
puts "Initial dump"
count = 0
buffer = []
content.each do |it|
  buffer.push it
  count = count + 1
  if count == 4
    puts buffer
    puts "End of buffer"
    buffer.clear
    count = 0
  end
end