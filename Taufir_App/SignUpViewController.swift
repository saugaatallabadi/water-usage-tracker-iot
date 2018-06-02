//
//  SignUpViewController.swift
//  Taufir_App
//
//  Created by Saugaat Allabadi on 2/8/17.
//  Copyright © 2017 Taufir Inc. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class SignUpViewController: UIViewController {

    @IBOutlet var fullName: UITextField!
    @IBOutlet var emailIDLabel: UITextField!
    
    
    @IBOutlet var passwordLabel: UITextField!
    @IBOutlet var repeatPasswordLabel: UITextField!
    @IBOutlet var mobileNumber: UITextField!
    @IBOutlet var noOfFamilyMembers: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //For hiding keyboard when tapped elsewhere
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    //For hiding keyboard when tapped elsewhere
    
    func tap(gesture: UITapGestureRecognizer) {
        fullName.resignFirstResponder()
        emailIDLabel.resignFirstResponder()
        passwordLabel.resignFirstResponder()
        repeatPasswordLabel.resignFirstResponder()
        mobileNumber.resignFirstResponder()
        noOfFamilyMembers.resignFirstResponder()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if emailIDLabel.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            FIRAuth.auth()?.createUser(withEmail: emailIDLabel.text!, password: passwordLabel.text!) { (user, error) in
                
                if error == nil {
                    print("You have successfully signed up")
                    
                    self.performSegue(withIdentifier: "SignUpToMain", sender: self)
                    
                    
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SignUpToMain" {
//            let secondVC = segue.destination as! MainScreenViewController
//            secondVC.firstVCtext = fullName.text!
        }
    }
}

