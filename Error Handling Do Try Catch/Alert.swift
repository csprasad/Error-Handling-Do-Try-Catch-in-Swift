//
//  Alert.swift
//  Error Handling Do Try Catch
//
//  Created by CSPrasad on 15/04/22.
//

import UIKit

class Alert {
    class func showBasic(title: String, message: String, vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
}
