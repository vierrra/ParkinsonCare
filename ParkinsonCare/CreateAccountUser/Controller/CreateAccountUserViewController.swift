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
        
    }
    
    private func configureNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.title = "Registrar"
    }
    
    private func configureLayoutConfirmCreateAccountButton() {
        confirmCreateAccountButton.layer.cornerRadius = 5
    }
}
