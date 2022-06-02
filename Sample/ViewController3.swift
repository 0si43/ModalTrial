//
//  ViewController.swift
//  Sample
//
//  Created by Nakajima Tsuyoshi on 2022/06/02.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .overFullScreen
        addContainerView()
        
        let button = UIButton(type: .custom)
        button.setTitle("Modal", for: .normal)
        button.addAction(.init { _ in
            self.show()
        }, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        let dismissButton = UIButton(type: .custom)
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.addAction(.init { _ in
            self.dismiss(animated: false)
        }, for: .touchUpInside)
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(dismissButton)
        NSLayoutConstraint.activate([
            dismissButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 12),
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    public lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        view.accessibilityIdentifier = #function
        return view
    }()

    private func addContainerView() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 16),
            view.readableContentGuide.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 16),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 400)
        ])
    }

    @objc private func show() {
        let view2 = ViewController2()
        present(view2, animated: true)
    }


}

