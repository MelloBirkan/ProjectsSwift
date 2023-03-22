/*
In this project, you’ll hone your conditional skills by creating a program that can answer any “Yes” or “No” question with a different fortune each time.
*/
var playerName: String = "Marcello"
var playerQuestion: String = "I'll be iOS developer?"
let randomNumber = Int.random(in: 1...9) 
print(randomNumber)
let eightBall: String

switch randomNumber {
  case 1:
    eightBall = "Yes - definitely"
  case 2:
    eightBall = "It is decidedly so"
  case 3:
    eightBall = "Without a doubt"
  case 4:
    eightBall = "Reply hazy, try again"
  case 5:
    eightBall = "Better not tell you now"
  case 6:
    eightBall = "My sources say no"
  case 7:
    eightBall = "Outlook not so good"
  case 8:
    eightBall = "Very doubtful"
  case 9:
    eightBall = "Ask again later"
  default:
    eightBall = "Error"
}
playerName != "" ? print("\(playerName) ask: \(playerQuestion). Answer: \(eightBall)") : print("ask: \(playerQuestion). Answer: \(eightBall)")

