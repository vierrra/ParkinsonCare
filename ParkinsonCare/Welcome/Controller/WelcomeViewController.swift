//
//  WelcomeViewController.swift
//  ParkinsonCare
//
//  Created by Renato Vieira on 10/7/21.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel:        UILabel!
    @IBOutlet weak var welcomeMessageLabel: UILabel!
    @IBOutlet weak var getStartedButton:    UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.configureNavigationBar()
        self.configureWelcomeLabel()
        self.configureWelcomeLabel()
        self.configureWelcomeMessageLabel()
        self.configureLayoutGetStartedButton()
    }
    
    @IBAction func getStartedActionButton(_ sender: Any) {
        let identifier     = "createAccountUser"
        let storyBoard     = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(identifier: identifier)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func configureNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.title = "Bem vindo"
    }
    
    private func configureWelcomeLabel() {
        welcomeLabel.text = "Seja bem vindo!"
    }
    
    private func configureWelcomeMessageLabel() {
        welcomeMessageLabel.text = "Nossa missão é melhorar o gerenciamento de sua doença por meio deste aplicativo auxiliando o através de cuidados paliativos. Clique abaixo para registrar-se."
        [welcomeMessageLabel .sizeToFit()]
    }
    
    private func configureLayoutGetStartedButton() {
        getStartedButton.layer.cornerRadius = 5
        getStartedButton.setTitle("Registrar", for: .normal)
    }
}
