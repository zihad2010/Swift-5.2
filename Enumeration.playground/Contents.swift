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

//Iterating over Enumeration Case
enum Beverage: CaseIterable {
    case coffee, tea, juice
    case apple, banana
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
// Prints "3 beverages available"

for beverage in Beverage.allCases{
    print(beverage)
}

//proptocal CaseIterable
enum CompassDirection: CaseIterable{
    case north, east, west
}

print("There are \(CompassDirection.allCases.count) directions")

let caseList = CompassDirection.allCases.map({"\($0)"}).joined(separator: ", ")
print(caseList)

//Raw Values:enumeration cases can come prepopulated with default values (called raw values), which are all of the same type.
enum ASSCIIControlCharacter: Character{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

//Implicitly Assigned Raw Values
enum PlanetRawValue: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune //default start from 0
}
print(PlanetRawValue.earth.rawValue)

enum CompassPointRawValue: String {
    case north, south, east, west
}

let  earthOrder =  PlanetRawValue.earth.rawValue
print(earthOrder)

let sunsetDirection = CompassPointRawValue.west.rawValue
print(sunsetDirection)

//Recursive Enumerations




