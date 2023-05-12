// Write your code below 💪
struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var total: Int

  init (name: String, muscleGroups: [String], reps: Int, sets: Int) {
    self.name = name
    self.muscleGroups = muscleGroups
    self.reps = reps
    self.sets = sets
    self.total = reps * sets
  }
}

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]

  func printExercisePlan() {
    print("Today is \(self.dayOfWeek) and the plan is to:")

    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
      print("That's total of \(exercise.total) \(exercise.name)")
    }

  }

  init (dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }
}

var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shouldes"], reps: 10, sets: 3)
print(pushUp)

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])
print(mondayRegimen)

mondayRegimen.printExercisePlan()



