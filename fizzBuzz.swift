/*
Write a FizzBuzz.swift program that outputs numbers from 1 to 100.
But for multiples of 3, print Fizz instead of the number and for the multiples of 5, print Buzz. For numbers which are multiples of both 3 and 5 print, FizzBuzz.
*/
for num in 1...100 {
  if num % 3 == 0 {
    if num % 5 == 0 {
      print("FizzBuzz")
      continue
    }
    print("Fizz")
  } else if num % 5 == 0 {
    print("Buzz")
  } else {
    print(num)
  }
}



