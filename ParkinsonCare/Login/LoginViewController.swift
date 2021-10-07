//
//  LoginViewController.swift
//  ParkinsonCare
//
//  Created by Renato Vieira on 10/7/21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField:       UITextField!
    @IBOutlet weak var passwordTextfield:    UITextField!
    @IBOutlet weak var loginButton:          UIButton!
    @IBOutlet weak var createAccountdButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        self.configureLayoutLoginCreateAccountButton()
    }
    
    @IBAction func loginActionButton(_ sender: Any) {
        print("login ok")
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
}

