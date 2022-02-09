//: [Previous](@previous)

import Foundation

let str = "🧨🧧🎉🏮"

func charAt(_ str:String, _ offset:Int) -> String {
  let index = str.index(str.startIndex, offsetBy: offset)
  let char = str[index]
  return String(char)
}

let randomInt = Int.random(in: 0..<str.count)

func generateLine(_ n:Int) {
  var nstr = ""
  for _ in 0..<n {
    let randomInt = Int.random(in: 0..<str.count)
    // print(index, "randomInt", randomInt)
    nstr += charAt(str, randomInt)
  }
  print(nstr)
}

func generateBlock(_ n: Int) {
  for _ in 0..<n {
    generateLine(n)
  }
}

generateBlock(10)
print("")
generateBlock(3)
print("")
generateBlock(5)


//: [Next](@next)
