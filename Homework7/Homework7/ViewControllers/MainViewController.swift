//
//  ViewController.swift
//  Homework7
//
//  Created by Екатерина Лаптева on 4.01.24.
//

import UIKit

class MainViewController: UIViewController, SettingsDelegate {
    
    //MARK: - Properties
    private let avatarView = UIView()
    private let avatarLabel = UILabel()
    
    private let avatarImage = UIImageView()
    private let avatarName = UILabel()
    private let nameLabel = UILabel()
    
    private let customizedButton = CustomButton(title: "Customize", image: nil, border: true, filled: false)
    
    var config = AccountModel(avatarName: "No Name") {
        didSet {
            nameLabel.text = config.avatarName
            avatarImage.image = config.avatarImage
        }
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        buttonTargetAdded()
    }
    
    //MARK: -  private Methods
    private func buttonTargetAdded() {
        customizedButton.addTarget(self, action: #selector(customizeButtonPressed), for: .touchUpInside)
    }
    
    private func setupAvatarView() {
        avatarView.backgroundColor = UIColor.systemGray6
        avatarView.translatesAutoresizingMaskIntoConstraints = false
        avatarView.layer.cornerRadius = 125
        avatarView.layer.borderColor = UIColor.systemPurple.cgColor
        avatarView.layer.borderWidth = 1
    }
    private func setupAvatarLabel() {
        avatarLabel.text = "No Avatar"
        avatarLabel.textColor = UIColor.systemGray4
        avatarLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    private func setupAvatarImage() {
        avatarImage.image = config.avatarImage
        avatarImage.tintColor = UIColor.systemPurple
        avatarImage.translatesAutoresizingMaskIntoConstraints = false
    }
    private func setupNameLabel() {
        
        nameLabel.text = config.avatarName
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    private func setupUI() {
        view.backgroundColor = UIColor.systemBackground
        
        setupAvatarView()
        setupAvatarLabel()
        setupAvatarImage()
        setupNameLabel()
        
        view.addSubview(avatarView)
        avatarView.addSubview(avatarLabel)
        avatarView.addSubview(avatarImage)
        view.addSubview(nameLabel)
        view.addSubview(customizedButton)
        
        setupConstraints()
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            avatarView.widthAnchor.constraint(equalToConstant: 250),
            avatarView.heightAnchor.constraint(equalToConstant: 250),
            avatarView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            
            avatarLabel.centerXAnchor.constraint(equalTo: avatarView.centerXAnchor),
            avatarLabel.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor),
            
            avatarImage.centerXAnchor.constraint(equalTo: avatarView.centerXAnchor),
            avatarImage.centerYAnchor.constraint(equalTo: avatarView.centerYAnchor),
            
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: avatarView.bottomAnchor, constant: 30),
            
            customizedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            customizedButton.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30)
        ])
    }
    
    //MARK: -  Methods
    func saveAccountModel(_ config: AccountModel) {
        //
    }
    
    @objc func customizeButtonPressed(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
        let customizeViewController = storyBoard.instantiateViewController(withIdentifier: "CustomizeVC") as! CustomizeViewController
        customizeViewController.delegate = self
        customizeViewController.config = config
        self.navigationController?.pushViewController(customizeViewController, animated: true)
    }
}

