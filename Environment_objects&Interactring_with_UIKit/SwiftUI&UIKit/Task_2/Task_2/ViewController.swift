//
//  ViewController.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import UIKit

class ViewController: UIViewController {
    
    private let label: UILabel = {
        let lbl = UILabel()
        lbl.text = "Hello, from UIKit!"
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        lbl.textColor = .systemBlue
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
