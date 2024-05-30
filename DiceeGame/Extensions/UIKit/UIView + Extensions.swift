//
//  UIView + Extensions.swift
//  Joke
//
//  Created by Ildar Garifullin on 27/05/2024.
//

import UIKit

extension UIView {
    func addShadowOnView() {
        layer.shadowColor = UIColor.gray.cgColor
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 1.0
    }
}
