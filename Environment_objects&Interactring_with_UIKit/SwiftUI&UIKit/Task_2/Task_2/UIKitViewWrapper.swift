//
//  UIKitViewWrapper.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct UIKitViewWrapper: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> ViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
    }
}
