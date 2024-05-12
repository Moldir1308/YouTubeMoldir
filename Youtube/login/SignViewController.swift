//
//  SignViewController.swift
//  Youtube
//
//  Created by Мухит Молдир on 13.01.2024.
//

import UIKit

class SignViewController: UIViewController {
    
    
    lazy var SignTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Зарегистрируйтесь"
        textField.backgroundColor = .purple
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "введите пароль"
        textField.backgroundColor = .blue
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var pass2TextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "повторите"
        textField.backgroundColor = .systemBlue
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
    }
    
    func setupLayouts(){
}
}

