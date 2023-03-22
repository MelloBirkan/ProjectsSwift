/*Write a Palindrome.swift program that checks whether or not an array contains a palindrome.
*/
var text: [String] = ["h", "e", "l", "e", "h",]
var reversed = [String]()
var counter: Int = (text.count - 1)
while counter >= 0 {
  reversed.append(text[counter])
  counter -= 1
}

if text == reversed {
  print("\(reversed) is a palindrome of \(text)")
} else {
  print("isn't a palindrome")
}
