//
//  CreateAccountUserViewController.swift
//  ParkinsonCare
//
//  Created by Renato Vieira on 10/11/21.
//

import UIKit

class CreateAccountUserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureNavigationBar()
    }
    
    private func configureNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.title = "Registrar"
    }
}
