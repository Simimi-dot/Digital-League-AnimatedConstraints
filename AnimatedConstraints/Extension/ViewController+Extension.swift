//
//  ViewController+Extension.swift
//  AnimatedConstraints
//
//  Created by Егор Астахов on 21.03.2022.
//

import UIKit

//MARK: - Extension

// objc
extension ViewController {
    @objc
    func didTypeValidateEmailTextField() {
        let regExString = "([a-z0-9!#$%&'*+-/=?^_`{|}~]){1,64}@([a-z0-9!#$%&'*+-/=?^_`{|}~]){1,64}\\.([a-z0-9]){2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES[c] %@", regExString)
        let isValid = predicate.evaluate(with: customView.customViewTextField.text)
        
        if customView.customViewTextField.text?.isEmpty == true {
            emptyTextField()
        } else if isValid == true {
            isValidTrue()
        } else if isValid == false {
            isValidFalse()
        }
        
        UIView.animate(withDuration: Double(0.5)) {
            self.view.layoutIfNeeded()
        }
        
    }
    
    @objc
    func printEmail() {
        guard let text = customView.customViewTextField.text else {
            return
        }
        print(text)
    }
    
    
    // Methods
    private func emptyTextField() {
        customView.customView.layer.borderWidth = 0
        customView.customView.layer.borderColor = UIColor.clear.cgColor
        customView.customViewValidateLabelTopAnchor?.constant = 0
        customView.customViewConfirButtonTopAnchor?.constant = 500
        customView.customViewLabel.textColor = .white
        customView.confirmButton.isHidden = true
    }
    
    
    private func isValidTrue() {
        customView.customViewValidateLabelTopAnchor?.constant = 30
        customView.customViewConfirButtonTopAnchor?.constant = 20
        NSLayoutConstraint.activate(constraints)
        
        customView.customViewValidateLabel.isHidden = false
        customView.customViewLabel.textColor = .green
        
        customView.customViewValidateLabel.text = "Супер!"
        customView.customViewValidateLabel.textColor = .green
        customView.customView.layer.borderWidth = 2
        customView.customView.layer.borderColor = UIColor.green.cgColor
        customView.confirmButton.isHidden = false
    }
    
    private func isValidFalse() {
        customView.customViewValidateLabelTopAnchor?.constant = 30
        customView.customViewConfirButtonTopAnchor?.constant = 500
        NSLayoutConstraint.deactivate(constraints)
        
        customView.customViewLabel.textColor = .red
        customView.customViewValidateLabel.isHidden = false
        customView.customViewValidateLabel.text = "В поле ввода есть ошибка"
        customView.customViewValidateLabel.textColor = .red
        customView.customView.layer.borderWidth = 2
        customView.customView.layer.borderColor = UIColor.red.cgColor
    }
    
}
