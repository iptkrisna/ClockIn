//
//  ViewController.swift
//  ClockIn
//
//  Created by I Putu Krisna on 04/07/19.
//  Copyright © 2019 I Putu Krisna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var clockButton: UIButton!
    @IBOutlet weak var label: UILabel!
    var userDef = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let email = userDef.string(forKey: "email")
        label.text = email
        
    }

    @IBAction func clockInTapped(_ sender: UIButton) {
        userDef.set(emailTF.text, forKey: "email")
        label.text = emailTF.text
        
    }
    
}

