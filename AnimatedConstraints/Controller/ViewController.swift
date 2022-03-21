//
//  ViewController.swift
//  AnimatedConstraints
//
//  Created by Егор Астахов on 21.03.2022.
//

import UIKit

//MARK: - Class
class ViewController: UIViewController {

    //MARK: - Properties
    let customView = ViewControllerView()
    
    
    //MARK: - Life Cycle
    override func loadView() {
        self.view = customView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        customView.customViewTextField.addTarget(self, action: #selector(didTypeValidateEmailTextField), for: .editingChanged)
        customView.confirmButton.addTarget(self, action: #selector(printEmail), for: .touchUpInside)
        
    }
}



