import Combine
import Foundation

let namePublisher = Just("ani")
    .map { $0.uppercased() }

let surnamePublisher = Just("mosiashvili")

let combined = namePublisher
    .combineLatest(surnamePublisher)
    .map { name, surname in
        "\(name) \(surname)"
    }

let subscription = combined
    .sink { combinedName in
        print(combinedName)
    }
