func getUserChoice(userInput: String) -> String {
  if userInput.lowercased() == "rock" || userInput.lowercased() == "paper" || userInput.lowercased() == "scissors" {
    return userInput.lowercased()
  } else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

func getComputerChoice() -> String {
  let randomNumber = Int.random(in: 1...3)
  switch randomNumber {
    case 1:
      return "rock"
    case 2:
      return "paper"
    case 3: 
      return "scissors"
    default:
      return "Something went wrong"
  }
}

func determineWinner(_ userChoice: String, _ computerChoice: String) -> String {
  var decision = "It's a tie"

  switch userChoice {
    case "rock":
      if computerChoice == "paper" {
        decision = "The computer won"
      }
    case "paper":
      if computerChoice == "scissors" {
        decision = "The computer won"
      }
    case "scissors":
      if computerChoice == "rock" {
        decision = "The computer won"
      }
    default:
      decision = "Invalid choice. Please choose either rock, paper, or scissors."
  }
  
  if decision == "It's a tie" {
    if userChoice != computerChoice {
      decision = "The user won"
    }
  }

  return decision 
}


let userChoice = getUserChoice(userInput: "ROCK")
let compChoice = getComputerChoice()

print("You threw \(userChoice)\nThe computer threw \(compChoice)\n\(determineWinner(userChoice, compChoice))")

