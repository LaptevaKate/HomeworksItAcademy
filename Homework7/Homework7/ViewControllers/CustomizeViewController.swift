//
//  CustomizeViewController.swift
//  Homework7
//
//  Created by Екатерина Лаптева on 5.01.24.
//

import UIKit

class CustomizeViewController: UIViewController {
    
    //MARK: - Properties
    weak var delegate: SettingsDelegate?
    var config = AccountModel(avatarName: " ")
    
    let saveButton = CustomButton(title: "Save", border: false, filled: true)
    let editButton = CustomButton(title: "Edit", border: true, filled: false)
    let cancelButton = CustomButton(title: "Cancel", border: false, filled: false)

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()


    }

}
