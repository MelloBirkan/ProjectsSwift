//Write a Swift program in Quadratic.swift that solves the quadratic equation for the x‘s:
var a: Double = 2
var b: Double = 5
var c: Double = 3

var delta: Double = (b*b)-(4*a*c)
delta = delta.squareRoot()

var division: Double = 2*a

var root1: Double = (-b + delta) / division
var root2: Double = (-b - delta) / division

print("Root 1 is \(root1).\nRoot 2 is \(root2).")
