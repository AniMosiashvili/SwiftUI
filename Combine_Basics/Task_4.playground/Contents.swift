import Combine
import Foundation

let intSubject = PassthroughSubject<Int, Never>()

let evenNumbersPublisher = intSubject
    .filter { $0 % 2 == 0 }

let subscription = evenNumbersPublisher
    .sink { value in
        print("emitted even number: \(value)")
    }

intSubject.send(1)
intSubject.send(3)
intSubject.send(44)
intSubject.send(5)
intSubject.send(67)
intSubject.send(72)
intSubject.send(87)
