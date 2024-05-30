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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        view.addSubview(logoImageView)
    }
}

extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
}

