//
//  LoginViewController.swift
//  Youtube
//
//  Created by Мухит Молдир on 13.01.2024.
//

import UIKit
class LoginViewController: UIViewController {
    
//    logoImageView
    
    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Телефон, имя пользователя или эл. адрес"
        textField.backgroundColor = .lightGray
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Введите пароль"
        textField.backgroundColor = .lightGray
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    lazy var repeatpassTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "войти"
        textField.backgroundColor = .systemBlue
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var repeat2passTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "регистрация"
        textField.backgroundColor = .systemBlue
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayouts()
        setupTextFields()
    }
    
    func setupLayouts(){
        view.addSubview(loginTextField)
        loginTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.right.equalToSuperview().inset(50)
            make.height.equalTo(40)
        }
        
        view.addSubview(passTextField)
        passTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(50)
            make.height.equalTo(40)
        }
        
        view.addSubview(repeatpassTextField)
        repeatpassTextField.snp.makeConstraints { make in
            make.top.equalTo(passTextField.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(50)
            make.height.equalTo(40)
        }
        view.addSubview(repeat2passTextField)
        repeat2passTextField.snp.makeConstraints { make in
            make.top.equalTo(repeatpassTextField.snp.bottom).offset(10)
            make.left.right.equalToSuperview().inset(50)
            make.height.equalTo(40)
        }
    }
    
    func setupTextFields() {
        //loginTextField.w
        loginTextField.addTarget(self,action: #selector(handleTextAdded), for: .allEditingEvents)
        passTextField.addTarget(self, action: #selector(handlePass), for: <#T##UIControl.Event#>)
        
    }
}


    // MARK: - SwiftUI
    import SwiftUI
    @available(iOS 13.0, *)
    struct LoginVCProvider: PreviewProvider {
        static var previews: some View {
            ContainerView().edgesIgnoringSafeArea(.all)
        }
        struct ContainerView: UIViewControllerRepresentable {
            func updateUIViewController(_ uiViewController: LoginViewController, context: Context) {
            }
            
        let mainVC = LoginViewController()
            func makeUIViewController(context:
                                      UIViewControllerRepresentableContext<LoginVCProvider.ContainerView>)->LoginViewController {
                return mainVC
        }
        }
    }
