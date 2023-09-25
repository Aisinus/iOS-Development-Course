class Box<T> {
    var value: T

    init(value: T) {
        self.value = value
    }
}

let intBox = Box(value: 10)
let stringBox = Box(value: "Hello")

extension Box {
    func update<U>(with newValue: U) {
        if let newValue = newValue as? T {
            self.value = newValue
        } else {
            print("Invalid type. Can't update value.")
        }
    }
}

intBox.update(with: 20)   // Updates the value to 20
intBox.update(with: "Hi") // Prints "Invalid type. Can't update value."



protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct IntStack: Container {
    var items = [Int]()
    mutating func append(_ item: Int) {
        items.append(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Int {
        return items[i]
    }
}

