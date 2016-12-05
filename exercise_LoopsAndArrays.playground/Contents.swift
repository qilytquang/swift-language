//: Playground - noun: a place where people can play
//: Exercise: Swift 3 Loops & Arrays, at http://blog.devslopes.com/p/3b84fc52-1d82-4980-bcf8-8c1941f4bfa5/

/* Exercise Arrays */
var arrString = [String]()

var arrDouble: [Double] = [1.2, 2.3, 3.4, 4.5]

var arrTypeInference = [1, 2, 3, 4, 5]

arrString.append("Quang")
arrString.append("Phuong")
arrString.append("in love")

arrDouble.append(0.1)
arrDouble.append(0.2)
arrDouble.append(0.3)

arrTypeInference.append(6)
arrTypeInference.append(7)
arrTypeInference.append(9)

arrString.remove(at: 2)
arrDouble.remove(at: 2)
arrTypeInference.remove(at: 2)

arrTypeInference.removeAll()

arrDouble.contains(3.4)

/* Exercise Loops */
var oddNumbers = [Int]()

for i in 1..<100 {
    if i % 2 == 1 {
        oddNumbers.append(i)
    }
}

print(oddNumbers)

var sums = [Int]()
for oddNumber in oddNumbers {
    sums.append(oddNumber + 5)
}

print(sums)

var index = 0
while index < sums.count {
    print("The sum is: \(sums[index])")
    index += 1
}
