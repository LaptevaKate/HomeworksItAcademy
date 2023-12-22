//
//  CalculatorScreenViewController.swift
//  ConstraintsHomework
//
//  Created by Екатерина Лаптева on 22.12.23.
//

import UIKit

class CalculatorScreenViewController: UIViewController {
    
    enum ButtonConstants {
        static let displayColor: UIColor = .black
        static let textColor: UIColor = .black
        static let elementColor: UIColor = .white
        static let topOpColor: UIColor = .systemBlue
        static let opColor: UIColor = .blue
        static let numColor: UIColor = .systemGray5
        
    }
    
    //MARK: - Properties
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    
    //MARK: - UIElements For Calculator Screen:
    let displayText: UILabel = {
        let textLabel = UILabel()
        textLabel.text = "0"
        textLabel.backgroundColor = ButtonConstants.displayColor
        textLabel.textColor = .white
        textLabel.textAlignment = .right
        return textLabel
    }()
    
    let cButton: UIButton = {
        let button = UIButton()
        button.setTitle("C", for: .normal)
        button.backgroundColor = ButtonConstants.topOpColor
        button.setTitleColor(ButtonConstants.elementColor, for: .normal)
        
        return button
    }()
    
    let deleteButton: UIButton = {
        let button = UIButton()
        button.setTitle("⌫", for: .normal)
        button.backgroundColor = ButtonConstants.topOpColor
        button.setTitleColor(ButtonConstants.elementColor, for: .normal)
        
        return button
    }()
    
    let percentButton: UIButton = {
        let button = UIButton()
        button.setTitle("%", for: .normal)
        button.backgroundColor = ButtonConstants.topOpColor
        button.setTitleColor(ButtonConstants.elementColor, for: .normal)
        
        return button
    }()
    
    let divideButton: UIButton = {
        let button = UIButton()
        button.setTitle("÷", for: .normal)
        button.backgroundColor = ButtonConstants.opColor
        button.setTitleColor(ButtonConstants.elementColor, for: .normal)
        
        return button
    }()
    
    let sevenButton: UIButton = {
        let button = UIButton()
        button.setTitle("7", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let eightButton: UIButton = {
        let button = UIButton()
        button.setTitle("8", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let nineButton: UIButton = {
        let button = UIButton()
        button.setTitle("9", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let multiplyButton: UIButton = {
        let button = UIButton()
        button.setTitle("x", for: .normal)
        button.backgroundColor = ButtonConstants.opColor
        button.setTitleColor(ButtonConstants.elementColor, for: .normal)
        
        return button
    }()
    
    let fourButton: UIButton = {
        let button = UIButton()
        button.setTitle("4", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let fiveButton: UIButton = {
        let button = UIButton()
        button.setTitle("5", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let sixButton: UIButton = {
        let button = UIButton()
        button.setTitle("6", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let subtractButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.backgroundColor = ButtonConstants.opColor
        button.setTitleColor(ButtonConstants.elementColor, for: .normal)
        
        return button
    }()
    
    let oneButton: UIButton = {
        let button = UIButton()
        button.setTitle("1", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let twoButton: UIButton = {
        let button = UIButton()
        button.setTitle("2", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let threeButton: UIButton = {
        let button = UIButton()
        button.setTitle("3", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let addButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.backgroundColor = ButtonConstants.opColor
        button.setTitleColor(ButtonConstants.elementColor, for: .normal)
        
        return button
    }()
    let zeroButton: UIButton = {
        let button = UIButton()
        button.setTitle("0", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let decimalButton: UIButton = {
        let button = UIButton()
        button.setTitle(".", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(ButtonConstants.textColor, for: .normal)
        
        return button
    }()
    
    let equalsButton: UIButton = {
        let button = UIButton()
        button.setTitle("=", for: .normal)
        button.backgroundColor = ButtonConstants.numColor
        button.setTitleColor(.blue, for: .normal)
        
        return button
    }()
    
    let firstRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let secondRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let thirdRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let fourthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let fifthRow: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let containerOfAllStackViews: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 1
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addAllSubviews()
        addAllConstraints()
        addViewsToStackViews()
    }
    
    //MARK: - Methods
    private func addAllSubviews() {
        self.view.addSubview(displayText)
        self.view.addSubview(containerOfAllStackViews)
    }
    
    private func addAllConstraints() {
        displayText.anchor(top: self.view.topAnchor,
                           bottom: nil,
                           leading: self.safeArea.leadingAnchor,
                           trailing: self.safeArea.trailingAnchor,
                           paddingTop: 0,
                           paddingBottom: 0,
                           paddingLeft: 0,
                           paddingRight: 0,
                           width: nil,
                           height: 350)
        
        containerOfAllStackViews.anchor(top: self.displayText.bottomAnchor,
                                        bottom: self.safeArea.bottomAnchor,
                                        leading: self.safeArea.leadingAnchor,
                                        trailing: self.safeArea.trailingAnchor,
                                        paddingTop: 1,
                                        paddingBottom: 0,
                                        paddingLeft: 0,
                                        paddingRight: 0)
    }
    
    private func addViewsToStackViews(){
        
        //First Row For Stack View
        firstRow.addArrangedSubview(cButton)
        firstRow.addArrangedSubview(deleteButton)
        firstRow.addArrangedSubview(percentButton)
        firstRow.addArrangedSubview(divideButton)
        
        //Second Row For Stack View
        secondRow.addArrangedSubview(sevenButton)
        secondRow.addArrangedSubview(eightButton)
        secondRow.addArrangedSubview(nineButton)
        secondRow.addArrangedSubview(multiplyButton)
        
        //Third Row For Stack View
        thirdRow.addArrangedSubview(fourButton)
        thirdRow.addArrangedSubview(fiveButton)
        thirdRow.addArrangedSubview(sixButton)
        thirdRow.addArrangedSubview(subtractButton)
        
        //Fourth Row For Stack View
        fourthRow.addArrangedSubview(oneButton)
        fourthRow.addArrangedSubview(twoButton)
        fourthRow.addArrangedSubview(threeButton)
        fourthRow.addArrangedSubview(addButton)
        
        //Fifth Row For Stack View
        fifthRow.addArrangedSubview(decimalButton)
        fifthRow.addArrangedSubview(zeroButton)
        fifthRow.addArrangedSubview(equalsButton)
        
        //Container For All Stack Views
        containerOfAllStackViews.addArrangedSubview(firstRow)
        containerOfAllStackViews.addArrangedSubview(secondRow)
        containerOfAllStackViews.addArrangedSubview(thirdRow)
        containerOfAllStackViews.addArrangedSubview(fourthRow)
        containerOfAllStackViews.addArrangedSubview(fifthRow)
    }
}
//MARK: - extension UIView
extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?,
                bottom: NSLayoutYAxisAnchor?,
                leading: NSLayoutXAxisAnchor?,
                trailing: NSLayoutXAxisAnchor?,
                paddingTop: CGFloat,
                paddingBottom: CGFloat,
                paddingLeft: CGFloat,
                paddingRight: CGFloat,
                width: CGFloat? = nil,
                height: CGFloat? = nil) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeft).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -paddingRight).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
