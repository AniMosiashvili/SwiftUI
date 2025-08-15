import Combine
import Foundation

let intSubject = PassthroughSubject<Int, Never>()

let squaredPublisher = intSubject
    .flatMap { value -> Just<Int> in
        let square = value * value
        return Just(square)
    }

let subscription = squaredPublisher
    .sink { squared in
        print("squared value: \(squared)")
    }

intSubject.send(17)
intSubject.send(9)
intSubject.send(87)
intSubject.send(33)
