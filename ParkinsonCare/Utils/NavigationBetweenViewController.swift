//
//  NavigationBetweenViewController.swift
//  ParkinsonCare
//
//  Created by Renato Vieira on 10/11/21.
//

import UIKit

class NavigationBetweenViewController: UIViewController {
    
    public func navigationController(_ identifier: String) {
        let storyBoard     = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(identifier: identifier)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
