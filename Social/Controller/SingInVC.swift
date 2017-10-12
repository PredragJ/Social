//
//  ViewController.swift
//  Social
//
//  Created by Predrag Jevtic on 10/12/17.
//  Copyright © 2017 Predrag Jevtic. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SingInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookBtnTapped(_ sender: Any) {
        
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Pec: Unable to authenticate with Facebook - \(String(describing: error))")
            } else if result?.isCancelled == true {
                print("Pec: User cancelled Facebook authentication")
            } else {
                print("JESS: Successfully authenticated with Facebook")
                let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("JESS: Unable to authenticate with Firebase - \(String(describing: error))")
            } else {
                print("JESS: Successfully authenticated with Firebase")
//                if let user = user {
//                    let userData = ["provider": credential.provider]
//                    self.completeSignIn(id: user.uid, userData: userData)
//                }
            }
        })
    }
    @IBAction func presed(_ sender: Any) {
        print("Pressed")
    }
    
}
