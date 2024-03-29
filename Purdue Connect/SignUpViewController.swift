//
//  SignUpViewController2.swift
//  Purdue Connect
//
//  Created by Stephanie Yoshimoto on 9/15/19.
//  Copyright © 2019 Neerali Shah. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phoneNum: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var signUp: RoundButton!
    @IBOutlet weak var cancel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        email.delegate = self as? UITextFieldDelegate
//                phoneNum.delegate = (self as? (UITextFieldDelegate))
//                password.delegate = self as? UITextFieldDelegate
    }
    
//    @IBAction func cancelPressed(_ sender: Any) {
//        performSegue(withIdentifier: "Cancel", sender: UIButton.self)
//    }
//    @IBAction func signUpPressed(_ sender: Any) {
//        performSegue(withIdentifier: "Sign Up", sender: UIButton.self)
//    }
    
    var db: Firestore!
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        let usersRef = db.collection("sign up")
        
        usersRef.addDocument(data: [
            "email": email.text!,
            "phone number": phoneNum.text!,
            "password": password.text!
        ])
        
    }
    
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        phoneNum.resignFirstResponder()
//    }
}

extension SignUpViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()

        return true
    }
}
