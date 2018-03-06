//: Playground - noun: a place where people can play

import Foundation

//class EquatableTest: Equatable {
//
//  var x = 1
//
//  static func ==(lhs: EquatableTest, rhs: EquatableTest) -> Bool {
//    return lhs.x == rhs.x
//  }
//}
//
//
//let x = EquatableTest()
//let y = EquatableTest()
//
//x == y


let hello = "hellosdfsdfasdfsdfasdfasdfasfdsdfasfsdfsdfffdasdf"
hello.hashValue

let maxValue = Int64.max
print(maxValue)

let trueOrFalse: Bool = true
trueOrFalse.hashValue


//int
let x = 10045

x.hashValue
x.bitWidth

let y: Double = 10045.2
Int(y).bitWidth
y.hashValue
y.bitPattern

let z: Float = 10045.2
Int(z).bitWidth
z.hashValue



