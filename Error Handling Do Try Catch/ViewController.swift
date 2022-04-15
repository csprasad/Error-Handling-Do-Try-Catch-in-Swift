//
//  ViewController.swift
//  Error Handling Do Try Catch
//
//  Created by CSPrasad on 15/04/22.
//

import UIKit

class ViewController: UIViewController {

    enum LoginError: Error {
        case invalidEmail
        case incorrectPasswordLength
        case incompleteForm
    }
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        do {
            try login()
            //Transitions here
            
        } catch LoginError.incompleteForm {
            Alert.showBasic(title: "Incomplete Form", message: "Please fill out both email and password fields", vc: self)
        } catch LoginError.invalidEmail {
            Alert.showBasic(title: "Invalid Email Format", message: "Please fill the valid email address", vc: self)
        } catch LoginError.incorrectPasswordLength {
            Alert.showBasic(title: "Password too short", message: "Password should be atleast 8 characters", vc: self)
        } catch {
            Alert.showBasic(title: "Unable to login", message: "There was an error attempting to login", vc: self)
        }
    }
    
    
    func login() throws {
        let email = emailTextfield.text!
        let password = passwordTextfield.text!
        
        if email.isEmpty || password.isEmpty {
            throw LoginError.incompleteForm
        }
        
        if !email.isValidEmail {
            throw LoginError.invalidEmail
        }
        
        if password.count < 8 {
            throw LoginError.incorrectPasswordLength
        }
        
        // Countinue
    }
}




