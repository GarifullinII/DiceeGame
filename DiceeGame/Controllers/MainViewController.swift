//
//  ViewController.swift
//  DiceeGame
//
//  Created by Ildar Garifullin on 30/05/2024.
//

import UIKit

class MainViewController: UIViewController {
    
    private let logoImageView:  UIImageView = {
        let image = UIImage(named: "diceeLogo.png")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let diceFirstImageView:  UIImageView = {
        let image = UIImage(named: "dice1.png")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let diceSecondImageView:  UIImageView = {
        let image = UIImage(named: "dice2.png")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let rollButton:  UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .white
        button.layer.cornerRadius = 10
        button.tintColor = .specialBackground
        button.setTitle("ROLL", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(32)
        button.addTarget(self, action: #selector(rollButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        view.addSubview(logoImageView)
        view.addSubview(diceFirstImageView)
        view.addSubview(diceSecondImageView)
        view.addSubview(rollButton)
    }
    
    @objc private func rollButtonTapped() {
        print("rollButtonTapped")
    }
}

// MARK: -SetConstraints
extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 300)
        ])
        NSLayoutConstraint.activate([
            diceFirstImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            diceFirstImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            diceFirstImageView.heightAnchor.constraint(equalToConstant: 100),
            diceFirstImageView.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            diceSecondImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            diceSecondImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            diceSecondImageView.heightAnchor.constraint(equalToConstant: 100),
            diceSecondImageView.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rollButton.topAnchor.constraint(equalTo: diceSecondImageView.bottomAnchor, constant: 100),
            rollButton.heightAnchor.constraint(equalToConstant: 60),
            rollButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}

