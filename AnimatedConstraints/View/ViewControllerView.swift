//
//  ViewControllerView.swift
//  AnimatedConstraints
//
//  Created by Егор Астахов on 21.03.2022.
//

import UIKit

//MARK: - Class
class ViewControllerView: UIView {
    //MARK: - Properties
    
    lazy var customView: UIView = {
       var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 12
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        view.layer.shadowOpacity = 0.6
        view.layer.shadowRadius = 10
        
        return view
    }()
    
    lazy var customViewLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Проверка почты"
        label.font = UIFont.systemFont(ofSize: 25)
        label.textAlignment = .center
        
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        label.layer.shadowOpacity = 0.6
        label.layer.shadowRadius = 10
        
        return label
    }()
    
    lazy var customViewTextField: UITextField = {
       var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 4
        textField.placeholder = "Введите почту..."
        textField.backgroundColor = .white
        textField.textColor = .black
        
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        textField.layer.shadowOpacity = 0.6
        textField.layer.shadowRadius = 4
        
        return textField
    }()
    
    lazy var customViewValidateLabel: UILabel = {
       var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
        
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        label.layer.shadowOpacity = 0.6
        label.layer.shadowRadius = 4
        
        
        
        return label
    }()
    
    lazy var confirmButton: UIButton = {
       var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Проходите", for: .normal)
        button.layer.cornerRadius = 12
        
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        button.layer.shadowOpacity = 0.6
        button.layer.shadowRadius = 10
        
        button.isHidden = true
        
        return button
    }()
    
    lazy var gradientLayer: CAGradientLayer = {
        var layer = CAGradientLayer()
        layer.colors = [UIColor.purple.cgColor, UIColor.blue.cgColor]
        layer.startPoint = CGPoint(x: 0.0, y: 0.0)
        layer.endPoint = CGPoint(x: 1, y: 1)
        layer.cornerRadius = 12
        return layer
    }()
    
    var customViewValidateLabelTopAnchor: NSLayoutConstraint?
    var customViewConfirButtonTopAnchor: NSLayoutConstraint?

    //MARK: - Life Cycle
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = confirmButton.bounds
    }
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


