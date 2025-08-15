import Combine
import Foundation

let textSubject = PassthroughSubject<String, Never>()

let debouncedPublisher = textSubject
    .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)

let subscription = debouncedPublisher
    .sink { text in
        print("Debounced: \(text)")
    }

let sequence = ["H", "He", "Hel", "Hell", "Hello"]

for (index, input) in sequence.enumerated() {
    DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.3) {
        textSubject.send(input)
    }
}
