/* You just returned from a trip to South America. The countries you visited were Colombia, Brazil, and Peru. You arrived back in your country with some foreign currencies from these three countries:
Colombian Pesos
Brazilian Reais
Peruvian Soles
Write a Swift program in PiggyBank.swift that converts the amount of each foreign currency and displays the total amount in USD.
*/

var pesosArg: Double = 10765.40
var reais: Double = 30.8

var total: Double

let Peso = 0.00029
let real = 0.21 

total = (reais * real) + (pesosArg * 0.00029)

print("US Dollars $\(total)")