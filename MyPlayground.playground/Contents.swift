//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var newString = str + " Rob"

for character in newString {
    
    println(character)
}

var newTypeString = NSString(string: newString)


newTypeString.substringToIndex(5)

newTypeString.substringFromIndex(6)

newTypeString.substringWithRange(NSRange(location: 3, length: 5))

newTypeString.containsString("Rob")

newTypeString.componentsSeperatedByString(" ")

newTypeString.uppercaseString


newTypeString.lowercaseString
