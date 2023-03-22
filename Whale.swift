/* Our goal is to take human phrases like "turpentine and turtles" and translate it to its “whale talk” equivalent: "UUEEIEEAUUEE".

There are a few simple rules for translating English text to “whale language”:

There are no consonants. Only vowels: "a", "e", "i", "o", "u".
The "u"s and "e"s are extra long, so we must double them in our program.
Once we have converted text to the whale language, the result is sung slowly, as is a custom in the ocean. */

var humanPhrase: String = "Turpentine and turtles"
var whalePhrase: String = ""

for char in humanPhrase {
    let lowerCase = char.lowercased()
    switch lowerCase {
    case "a", "i", "o":
        whalePhrase += lowerCase.uppercased()
    case "u", "e":
        whalePhrase += lowerCase.uppercased() + lowerCase.uppercased()
    default:
        continue
    }
}

print(whalePhrase)

