//
//  ViewController.swift
//  AutoLayoutProject
//
//  Created by Jae Oh on 2023/08/22.
//

import UIKit

class ViewController: UIViewController {
let oneButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        goExampleOne()
        
    }

    func goExampleOne() {
        view.addSubview(oneButton)
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        oneButton.backgroundColor = .blue
        
        oneButton.addTarget(self, action: #selector(oneButtonClicked), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
        
            oneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            oneButton.widthAnchor.constraint(equalToConstant: 300),
            oneButton.heightAnchor.constraint(equalToConstant: 50),
            oneButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    @objc func oneButtonClicked() {
        let vc = ExampleOneViewController()
        
        present(vc, animated: true)
    }
    
    
}

