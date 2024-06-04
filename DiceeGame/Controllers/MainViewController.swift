//
//  ViewController.swift
//  DiceeGame
//
//  Created by Ildar Garifullin on 30/05/2024.
//

import UIKit

class MainViewController: UIViewController {
    var leftDiceeNumber = 1
    var rightDiceeNumber = 5
    let imageArray = [UIImage(imageLiteralResourceName: "dice1.png"),
     UIImage(imageLiteralResourceName: "dice2.png"),
     UIImage(imageLiteralResourceName: "dice3.png"),
     UIImage(imageLiteralResourceName: "dice4.png"),
     UIImage(imageLiteralResourceName: "dice5.png"),
     UIImage(imageLiteralResourceName: "dice6.png")]
    
    private let logoImageView:  UIImageView = {
        let image = UIImage(named: "diceeLogo.png")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let diceLeftImageView:  UIImageView = {
        let image = UIImage(named: "dice1.png")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let diceRightImageView:  UIImageView = {
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
        view.addSubview(diceLeftImageView)
        view.addSubview(diceRightImageView)
        view.addSubview(rollButton)
    }
    
    @objc private func rollButtonTapped() {
        diceLeftImageView.image = imageArray.randomElement()
        diceRightImageView.image = imageArray.randomElement()
        leftDiceeNumber += 1
        rightDiceeNumber -= 1
    }
}

// MARK: -SetConstraints
extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
        NSLayoutConstraint.activate([
            diceLeftImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            diceLeftImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            diceLeftImageView.heightAnchor.constraint(equalToConstant: 100),
            diceLeftImageView.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            diceRightImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            diceRightImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            diceRightImageView.heightAnchor.constraint(equalToConstant: 100),
            diceRightImageView.widthAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            rollButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rollButton.topAnchor.constraint(equalTo: diceRightImageView.bottomAnchor, constant: 50),
            rollButton.heightAnchor.constraint(equalToConstant: 60),
            rollButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}

