func getUserChoice(choice: String) -> String {
  if choice == "rock" || choice == "paper" || choice == "scissors"{
  return choice
} else {
  return "choose rock, paper or scissors"
}
}

var user = getUserChoice(choice: "paper")

func getComputerChoice() -> String {
  let randonNumber = Int.random(in: 0...2)

  switch randonNumber {
    case 0:
      return "rock"
    case 1: 
      return "paper"
    case 2:
      return "scissors"
    default:
      return "error"
  }
}
var computer = getComputerChoice()

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {
  var decision = "It's a tie"
  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "Computer Won"
  } else if compChoice == "scissors" {
        decision = "user Won"
  }

  case "paper":
      if compChoice == "scissors" {
        decision = "Computer Won"
  } else if compChoice == "rock" {
        decision = "user Won"
  }  

case "scissors":
      if compChoice == "rock" {
        decision = "Computer Won"
  } else if compChoice == "paper" {
        decision = "user Won"
  }
default:
  print("Error")
  }
  return decision
}
print(determineWinner(user, computer))