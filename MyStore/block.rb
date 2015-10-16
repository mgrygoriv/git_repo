n=8
n.times {
  puts "Hello"
  print "world"
}

h = { :p1 => "value1", :p2 => "value2", :p3 => "value3"}
h.each_key {|key| puts key}
h.each_value do
  |value|
  puts value
end

h.each_key do
  |key|
  puts h[key]
end

File.open("out2","w") { |f| f.puts "test+out"}

puts "Time:-------------"
puts Time.now.class