//
//  Alert.swift
//  ParkinsonCare
//
//  Created by Renato Vieira on 10/7/21.
//

import Foundation
import UIKit

class Alert {
    let controller: UIViewController?
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func showAlert(title: String, message: String) {
        let alert    = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okButton)
        
        controller?.present(alert, animated: true, completion: nil)
    }
}
