//: Playground - noun: a place where people can play

import Foundation

//If map is called with a non-throwing transform, it does not throw an error itself and can be called without try:

//Roughly speaking, rethrows is for functions which do not throw errors "on their own", but only "forward" errors from their function parameters.

let x = [1, 5, 8, 10, 15]

//func test(value: Int) -> Int {
//  print(value)
//  return value * value
//}

func test(value: Int) throws -> Int {
  return value * value
}




do {
  let g = try x.map(test)
  g
} catch {
}





let y = x.map { (value) -> Int in

  return value * value
}

let z = x.map { value in value * value }

let b = x.map{$0 * $0}


b


