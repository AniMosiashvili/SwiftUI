import Combine
import Foundation

let futurePublisher = Future<String, Never> { promise in
    Task {
        try await Task.sleep(for: .seconds(2))
        promise(.success("Hello, Combine!"))
    }
}

let subscription = futurePublisher
    .sink { value in
        print("Value: \(value)")
    }
