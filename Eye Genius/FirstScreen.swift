//
//  ViewController.swift
//  Eye Genius
//
//  Created by Rafael Fonzar Albuquerque on 16/05/24.
//

import UIKit

class FirstScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupButtons()
    }
    
    func setupButtons() {
        let grandparentsButton = UIButton()
        
        grandparentsButton.configuration = .filled()
        grandparentsButton.configuration?.baseBackgroundColor = .systemPink
        grandparentsButton.configuration?.title = "I know the grandparents eyecolor"
        
        view.addSubview(grandparentsButton)
        grandparentsButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            grandparentsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            grandparentsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            grandparentsButton.widthAnchor.constraint(equalToConstant: 200),
            grandparentsButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let parentsButton = UIButton()
        parentsButton.setTitle("I know the parents eyecolor", for: .normal)
        parentsButton.setTitleColor(.systemPink, for: .normal)
        parentsButton.layer.borderColor = UIColor.systemPink.cgColor
        parentsButton.layer.borderWidth = 2
        parentsButton.backgroundColor = .clear
        
        view.addSubview(parentsButton)
        parentsButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            parentsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            parentsButton.topAnchor.constraint(equalTo: grandparentsButton.bottomAnchor, constant: 20),
            parentsButton.widthAnchor.constraint(equalToConstant: 200),
            parentsButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
