//
//  ViewControllerView+Extension.swift
//  AnimatedConstraints
//
//  Created by Егор Астахов on 21.03.2022.
//

import UIKit

//MARK: - Extension

// configureView
extension ViewControllerView {
    func configureView() {
        self.addSubview(customView)
        
        customView.addSubview(customViewLabel)
        customView.addSubview(customViewValidateLabel)
        customView.addSubview(customViewTextField)
        customView.addSubview(confirmButton)
        confirmButton.layer.addSublayer(gradientLayer)
        
        let customViewValidateLabelTopAnchor = customViewValidateLabel.topAnchor.constraint(equalTo: customViewTextField.topAnchor, constant: 20)
        let customViewConfirmButtonTopAnchor = confirmButton.topAnchor.constraint(equalTo: customViewValidateLabel.bottomAnchor, constant: 500)
        
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: self.topAnchor, constant: 250),
            customView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            customView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            customViewLabel.topAnchor.constraint(equalTo: customView.topAnchor, constant: 20),
            customViewLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 20),
            customViewLabel.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -20),
            
            customViewTextField.topAnchor.constraint(equalTo: customViewLabel.bottomAnchor, constant: 20),
            customViewTextField.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 20),
            customViewTextField.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -20),
            
            customViewValidateLabelTopAnchor,
            customViewValidateLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 20),
            customViewValidateLabel.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -20),
            customViewValidateLabel.bottomAnchor.constraint(lessThanOrEqualTo: customView.bottomAnchor, constant: -20),
            
            customViewConfirmButtonTopAnchor,
            confirmButton.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 20),
            confirmButton.trailingAnchor.constraint(equalTo: customView.trailingAnchor, constant: -20),
            confirmButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        self.customViewValidateLabelTopAnchor = customViewValidateLabelTopAnchor
        self.customViewConfirButtonTopAnchor = customViewConfirmButtonTopAnchor
        
    }
}
