
var a = 0
var b = 1
var n = 1
var sum = 0
while n <= 50 {
print("the fibonacci \(n) value is: \(a) ")
sum = a + b
a = b
b = sum
}