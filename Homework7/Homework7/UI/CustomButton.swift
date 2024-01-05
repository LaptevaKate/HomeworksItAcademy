//
//  CustomButton.swift
//  Homework7
//
//  Created by Екатерина Лаптева on 5.01.24.
//

import UIKit

class CustomButton: UIButton {
    
   convenience init(title: String, image: UIImage? = nil , border: Bool, filled: Bool) {
       self.init()
        setTitle(title, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        if image != nil {
            self.widthAnchor.constraint(equalToConstant: 200).isActive = true
            self.heightAnchor.constraint(equalToConstant: 200).isActive = true
            self.setImage(image, for: .normal)
        } else {
            self.widthAnchor.constraint(equalToConstant: 300).isActive = true
            self.heightAnchor.constraint(equalToConstant: 38).isActive = true
        }
        self.layer.cornerRadius = 10
        if filled {
            backgroundColor = .systemPurple
            setTitleColor(.white, for: .normal)
        } else {
            setTitleColor(.systemPurple, for: .normal)
            self.tintColor = .systemPurple
        }
        if border {
            self.layer.borderColor = UIColor.systemPurple.cgColor
            self.layer.borderWidth = 1
        }
    }
}
