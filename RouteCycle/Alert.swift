//
//  Alert.swift
//  RouteCycle
//
//  Created by Nikolay Pochekuev on 22.04.2021.
//

import UIKit

extension UIViewController {
    
    func addAdressAlert(title: String, placeholder: String, completionHandler: @escaping (String) -> Void) {
        
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (textfield) in
            textfield.placeholder = placeholder
        }
        
        let alertOk = UIAlertAction(title: "ok", style: .default) { (action) in
            let textfieldText = alertController.textFields?.first
            guard let text = textfieldText?.text else { return }
            completionHandler(text)
        }
        let alertCancel = UIAlertAction(title: "cancel", style: .default) { (action) in
            print("action")
        }
        
        alertController.addAction(alertOk)
        alertController.addAction(alertCancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func errorAlert(title: String, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOkay = UIAlertAction(title: "okay", style: .default)
        
        alertController.addAction(alertOkay)
        
        present(alertController, animated: true, completion: nil)
    }
}
