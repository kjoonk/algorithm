import Foundation

struct IntegerReverser {
    func reverse(_ number: Int) -> Int32 {
        var original = number
        var digits = [Int]()
        var reversed = 0
        
        while original != 0 {
            digits.insert(original % 10, at: 0)
            original = original / 10
        }
        
        for (index, value) in digits.enumerated() {
            let powerOf10 = Int(truncating: pow(10, index) as NSDecimalNumber)
            reversed += value * powerOf10
        }
        
        return Int32(exactly: reversed) ?? 0
    }
}
