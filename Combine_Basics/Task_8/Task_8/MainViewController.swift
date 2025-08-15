//
//  MainViewController.swift
//  Task_8
//
//  Created by Anna Harris on 04.08.25.
//

import UIKit
import Combine

class MainViewController: UIViewController {
    
    private let loadingManager = LoadingManager()
    private var cancellables = Set<AnyCancellable>()

    private let loadingSwitch: UISwitch = {
        let loadingSwitch = UISwitch()
        loadingSwitch.translatesAutoresizingMaskIntoConstraints = false
        loadingSwitch.onTintColor = .systemGreen
        return loadingSwitch
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Finished"
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        setupUI()
        bindLoadingState()
    }

    private func setupUI() {
        view.addSubview(loadingSwitch)
        view.addSubview(statusLabel)
        
        NSLayoutConstraint.activate([
            loadingSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingSwitch.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            statusLabel.topAnchor.constraint(equalTo: loadingSwitch.bottomAnchor, constant: 20),
            statusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        loadingSwitch.addTarget(self, action: #selector(switchToggled(_:)), for: .valueChanged)
    }

    private func bindLoadingState() {
        loadingManager.$isLoading
            .receive(on: DispatchQueue.main)
            .sink { [weak self] isLoading in
                let displayText = isLoading ? "Loading..." : "Finished"
                self?.statusLabel.text = displayText
                print("Loading state changed: \(displayText)")
            }
            .store(in: &cancellables)
    }

    @objc private func switchToggled(_ sender: UISwitch) {
        loadingManager.isLoading = sender.isOn
    }
}


#Preview {
    MainViewController()
}
