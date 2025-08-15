import Combine

let publisher = Just("Hello, Combine!")

let subscription = publisher
    .sink { value in
    print("Value: \(value)")
    }
