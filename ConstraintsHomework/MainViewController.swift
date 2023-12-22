//
//  MainViewController.swift
//  ConstraintsHomework
//
//  Created by Екатерина Лаптева on 22.12.23.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var userScreenButton: UIButton!
    @IBOutlet weak var calculatorScreenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUserScreenButton()
        setUpCalculatorScreenButton()
        
    }

    
    func setUpUserScreenButton() {
        userScreenButton.setTitle("First Task Screen", for: .normal)
        userScreenButton.setTitleColor(.white, for: .normal)
        userScreenButton.backgroundColor = .black
        userScreenButton.layer.cornerRadius = 10
        userScreenButton.layer.masksToBounds = true
    }
    
    func setUpCalculatorScreenButton() {
        calculatorScreenButton.setTitle("Second Task Screen", for: .normal)
        calculatorScreenButton.setTitleColor(.white, for: .normal)
        calculatorScreenButton.backgroundColor = .black
        calculatorScreenButton.layer.cornerRadius = 10
        calculatorScreenButton.layer.masksToBounds = true
    }
    
    
    
    @IBAction func userScreenPressedButton(_ sender: UIButton) {
    }
    
    @IBAction func calculatorScreenPressedButton(_ sender: UIButton) {
    }
    
    
    
    
    
}
