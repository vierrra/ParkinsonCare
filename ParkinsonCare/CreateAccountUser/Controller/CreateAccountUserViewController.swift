//
//  CreateAccountUserViewController.swift
//  ParkinsonCare
//
//  Created by Renato Vieira on 10/11/21.
//

import UIKit

class CreateAccountUserViewController: UIViewController {
    
    @IBOutlet weak var emailCreateAccountTextField:           UITextField!
    @IBOutlet weak var passwordCreateAccountTextField:        UITextField!
    @IBOutlet weak var confirmPasswordCreateAccountTextField: UITextField!
    @IBOutlet weak var nameCreateAccountTextField:            UITextField!
    @IBOutlet weak var lastNameCreateAccountTextField:        UITextField!
    @IBOutlet weak var confirmCreateAccountButton:            UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureNavigationBar()
        self.configureLayoutConfirmCreateAccountButton()
    }
    
    @IBAction func confirmCreateAccountActionButton(_ sender: Any) {
        self.createAccountUser()
    }
    
    private func configureNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.title = "Registrar"
    }
    
    private func configureLayoutConfirmCreateAccountButton() {
        confirmCreateAccountButton.layer.cornerRadius = 5
    }
    
    private func createAccountUser() {
        guard let email           = emailCreateAccountTextField.text,
              let password        = passwordCreateAccountTextField.text,
              let confirmPassword = confirmPasswordCreateAccountTextField.text,
              let name            = nameCreateAccountTextField.text,
              let lastName        = lastNameCreateAccountTextField.text else { return }
        
        if (email == "" && password == "" && confirmPassword == "" && name == "" && lastName == "") {
            
            Alert(controller: self).showAlert(title: "Aviso", message: "Preencha todos os campos")
        } else {
            let identifier = "mainView"
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyBoard.instantiateViewController(identifier: identifier)
            
            viewController.modalPresentationStyle = .fullScreen
            
            self.present(viewController, animated: true, completion: nil)
        }
    }
}
