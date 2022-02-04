import UIKit

var greeting = "Hello, playground"

// 1
let ch1 = "🌧"
print(Array(ch1.unicodeScalars))

let ch2 = "☀️"
print(Array(ch1.unicodeScalars))

let texts = " Today is \(ch1)\n but yesterday is \(ch2)"
print(texts)

// 2
let regionCN = "\u{1F1E8}\u{1F1F3}"

 // What's first emoji?
// TRY: write a func to display a range of emoji

var str = ""
let n = 10 // 79 100
for uni in 0...n {
  let codepoint = 0x1F640 + uni
  let codepointString = String(format: "0x%02X", codepoint)
  let emoji = String(Character(UnicodeScalar(codepoint)!))
  print("\(uni) \(codepointString) \(emoji)")
str += emoji
}

print(str)


let w1 = "\u{6625}"
let w2 = "\u{8282}"
let w3 = "\u{5FEB}"
let w4 = "\u{4E50}"



print("\(w1)🧨\(w2)🧧\(w3)🏮\(w4)🐯")

func randomWords(_ n: Int) -> String {
  var str = ""
  for _ in 0..<n {
    let n1 = 0x504E + Int.random(in: 0..<26)
    let n2 = 0x5FEB + Int.random(in: 0..<26)
    let rr = String(Character(UnicodeScalar(n1)!)) + String(Character(UnicodeScalar(n2)!))
    str += rr
  }
  return str
}
let rstr = randomWords(10)
print(rstr)

