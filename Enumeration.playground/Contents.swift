import UIKit

// Enumeration Syntax..

enum SomeEnumeration{
    // enumeration defination goes here.
}

// example for the four main points of a campass
enum CompassPoint{
    case north
    case south
    case east
    case west
}

//Multiple cases can appear on a single line separated by commas.
enum Planet{
    case mercuy, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//Note:  their names start with a capital letter. Give enumeration types singular rather than plural names, so that they read as self-evident:
var directionToHead = CompassPoint.west
print(directionToHead)

//Maching Enumeration Values With a Switch Statement
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
    break
case .south:
    print("Watch out for penguins")
    break
case .east:
    print("Where the sun rises")
    break
case .west:
    print("Where the skies are blue")
    break
}

// When it isn’t appropriate to provide a case for every enumeration case, you can provide a default case to cover any cases that aren’t addressed explicitly:
let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

