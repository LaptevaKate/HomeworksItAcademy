//
//  UIImages.swift
//  Homework7
//
//  Created by Екатерина Лаптева on 5.01.24.
//

import UIKit

let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 100, weight: .bold, scale: .large)

enum UIImages {
    static let ant = UIImage(systemName: "ant", withConfiguration: imageConfiguration)
    static let person = UIImage(systemName: "person", withConfiguration: imageConfiguration)
    static let crown = UIImage(systemName: "crown", withConfiguration: imageConfiguration)
    static let star = UIImage(systemName: "star", withConfiguration: imageConfiguration)
}
