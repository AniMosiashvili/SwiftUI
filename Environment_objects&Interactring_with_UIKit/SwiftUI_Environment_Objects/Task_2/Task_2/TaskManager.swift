//
//  TaskManager.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import Foundation
import SwiftUI

class TaskManager: ObservableObject {
    @Published var tasks: [String] = []
}
