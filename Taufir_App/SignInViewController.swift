//
//  SignInViewController.swift
//  Taufir_App
//
//  Created by Saugaat Allabadi on 2/8/17.
//  Copyright © 2017 Taufir Inc. All rights reserved.
//

import UIKit
import Firebase
//import FBSDKLoginKit
import GoogleSignIn


//class SignInViewController: UIViewController, FBSDKLoginButtonDelegate, GIDSignInUIDelegate {
//
//    @IBOutlet var emailIDLabel: UITextField!
//    @IBOutlet var passwordLabel: UITextField!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //For hiding keyboard when tapped elsewhere
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
//        self.view.addGestureRecognizer(tapGesture)
//        
//        let loginButton = FBSDKLoginButton()
//        view.addSubview(loginButton)
//        
//        loginButton.frame = CGRect(x: 16, y: 550, width: view.frame.width - 32, height: 40)
//        loginButton.delegate = self
//        loginButton.readPermissions = ["email", "public_profile"]
//        
//        
//        
//        //Google SignIn button
//        let googleButton = GIDSignInButton()
//        googleButton.frame = CGRect(x: 16, y: 600, width: view.frame.width - 32, height: 30)
//        view.addSubview(googleButton)
//        
//        //GIDSignIn.sharedInstance().uiDelegate = self
//        
//    }
//    
//        //For hiding keyboard when tapped elsewhere
//    
//    func tap(gesture: UITapGestureRecognizer) {
//        emailIDLabel.resignFirstResponder()
//        passwordLabel.resignFirstResponder()
//    }
//    
//    
//    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
//        if error != nil {
//            print(error)
//            return
//        }
//        
//        showEmailAddress()
//    }
//    
//
//    func handleCustomFBLogin() {
//        FBSDKLoginManager().logIn(withReadPermissions: ["email"], from: self) { (result, err) in
//            if err != nil {
//                print("Custom FB Login failed:", err ?? "")
//                return
//            }
//            
//            self.showEmailAddress()
//        }
//    }
//
//    
//    
//    func showEmailAddress() {
//        let accessToken = FBSDKAccessToken.current()
//        guard let accessTokenString = accessToken?.tokenString else { return }
//        
//        let credentials = FIRFacebookAuthProvider.credential(withAccessToken: accessTokenString)
//        FIRAuth.auth()?.signIn(with: credentials, completion: { (user, error) in
//            if error != nil {
//                print("Something went wrong with our FB user: ", error ?? "")
//                return
//            }
//            
//            print("Successfully logged in with our user: ", user ?? "")
//        })
//        
//        FBSDKGraphRequest(graphPath: "/me", parameters: ["fields": "id, name, email"]).start { (connection, result, err) in
//            
//            if err != nil {
//                print("Failed to start graph request:", err ?? "")
//                return
//            }
//            print(result ?? "")
//        }
//    }
//
//    
//    
//    /**
//     Sent to the delegate when the button was used to logout.
//     - Parameter loginButton: The button that was clicked.
//     */
//    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
//        print("Did log out of facebook")
//    }
//    
//        
//        // Do any additional setup after loading the view.


//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    @IBAction func signInButton(_ sender: Any) {
//        
//        if self.emailIDLabel.text == "" || self.passwordLabel.text == "" {
//            
//            //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
//            
//            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
//            
//            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//            alertController.addAction(defaultAction)
//            
//            self.present(alertController, animated: true, completion: nil)
//            
//        } else {
//            
//            FIRAuth.auth()?.signIn(withEmail: self.emailIDLabel.text!, password: self.passwordLabel.text!) { (user, error) in
//                
//                if error == nil {
//                    
//                    //Print into the console if successfully logged in
//                    print("You have successfully logged in")
//                    
//                    //Go to the HomeViewController if the login is sucessful
////                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Home")
////                    self.present(vc!, animated: true, completion: nil)
//                    self.performSegue(withIdentifier: "SignInToMain", sender: self)
//                    
//                } else {
//                    
//                    //Tells the user that there is an error and then gets firebase to tell them the error
//                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
//                    
//                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//                    alertController.addAction(defaultAction)
//                    
//                    self.present(alertController, animated: true, completion: nil)
//                }
//            }
//        }
//        
//    }
//    
//    
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//
//}
