//
//  ViewController.swift
//  Task_1
//
//  Created by Anna Harris on 22.08.25.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        let button = UIButton(type: .system)
        button.setTitle("Show SwiftUI Screen", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.backgroundColor = .purple
        button.tintColor = .white
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showSwiftUIScreen), for: .touchUpInside)
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func showSwiftUIScreen() {
        let swiftUIView = SomeView()
        let hostingController = UIHostingController(rootView: swiftUIView)
        
        hostingController.modalPresentationStyle = .fullScreen
        present(hostingController, animated: true, completion: nil)
    }
}


