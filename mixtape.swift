/*
Write a program in Mixtape.swift that holds the ultimate playlist of music in a Swift array.
*/
print(".-----------------------------.")
print("| Bieber's Playlist    90 min |")
print("|     __  ______  __          |")
print("|    (  )|).....|(  )         |")
print("|    (__)|)_____|(__)         |")
print("|    ________________         |")
print("|___/_._o________o_._\\________|")

var mixtape = [String]()
mixtape.append("baby")
mixtape += ["What do You Mean", "One love", "Peaches"]

mixtape.remove(at: 0)
mixtape.insert("Cold water", at: 1)

for item in 0...(mixtape.count/2) {
  print("\(item+1)", mixtape[item])
}