a = 0
b = 1
n = 50

1.upto 50 do |i|
  puts "the fibonacci #{i} value is:  #{a}"
  sum = a + b
  a = b
  b = sum
end
