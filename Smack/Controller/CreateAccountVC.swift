//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Илья Маслиев on 15/02/2018.
//  Copyright © 2018 Masliev. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccntPressed(_ sender: Any) {
        guard let email = emailTxt.text,  emailTxt.text != "" else { return }
        guard let pass = passTxt.text , passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (succes) in
            if succes {
                print("registered user!")
            }
        }
    }
 
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
