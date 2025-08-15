//
//  MainViewModel.swift
//  Task_7
//
//  Created by Anna Harris on 04.08.25.
//

import Foundation
import Combine

class MainViewModel {
    let buttonTapSubject = PassthroughSubject<Void, Never>()
    
    private var cancellables = Set<AnyCancellable>()
    private var tapCount = 0

    init() {
        buttonTapSubject
            .sink { [weak self] in
                guard let self = self else { return }
                self.tapCount += 1
                print("button press count: \(self.tapCount)")
            }
            .store(in: &cancellables)
    }
}
