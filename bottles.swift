/*
Write a program in Bottles.swift that uses a while loop to print the “99 Bottles of Milk” song in its entirety.
*/
for number in stride(from: 99, to: 0, by: -1){
  print("\(number) bottles of milk on the wall \(number) bottles of milk!\nYou take one down and pass it around...\n\(number-1) bottles of milk on the wall!")
}