//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Илья Маслиев on 15/02/2018.
//  Copyright © 2018 Masliev. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginVC.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}