//
//  LoginViewController.swift
//  ParkinsonCare
//
//  Created by Renato Vieira on 10/7/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField:       UITextField!
    @IBOutlet weak var passwordTextField:    UITextField!
    @IBOutlet weak var loginButton:          UIButton!
    @IBOutlet weak var createAccountdButton: UIButton!
    
    var currenceEmail    = "vierrra@hotmail.com"
    var currencePassword = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        self.configureLayoutLoginCreateAccountButton()
        self.setSecurityAndEntryOfFields()
    }
    
    @IBAction func loginActionButton(_ sender: Any) {
        self.login()
    }
    
    @IBAction func createAccountActionButton(_ sender: Any) {
        print("registro ok")
    }
    
    @IBAction func recoveryPasswordActionButton(_ sender: Any) {
        print("recuperar senha ok")
    }
    
    private func configureLayoutLoginCreateAccountButton() {
        loginButton.layer.cornerRadius          = 5
        loginButton.layer.borderColor           = UIColor.white.cgColor
        loginButton.layer.borderWidth           = 1
        createAccountdButton.layer.cornerRadius = 5
        createAccountdButton.layer.borderColor  = UIColor.white.cgColor
        createAccountdButton.layer.borderWidth  = 1
    }
    
    private func login() {
        guard let email = emailTextField.text, let password = passwordTextField.text else {return}
        
        if (email == currenceEmail && password == currencePassword) {
            print("logado")
        } else {
            print("nao autenticado")
        }
    }
    
    private func setSecurityAndEntryOfFields() {
        emailTextField.keyboardType         = .emailAddress
        passwordTextField.isSecureTextEntry = true
    }
}

