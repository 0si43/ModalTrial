//
//  ViewController.swift
//  Sample
//
//  Created by Nakajima Tsuyoshi on 2022/06/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .overFullScreen
        view.backgroundColor = .red
        
        let button = UIButton(type: .custom)
        button.setTitle("Button", for: .normal)
        button.addAction(.init { _ in
            self.show()
        }, for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    @objc private func show() {
        let view2 = ViewController2()
        present(view2, animated: true)
    }

}

