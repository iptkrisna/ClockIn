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
    @IBOutlet weak var label: UILabel!
    var userDef = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = userDef.string(forKey: "email")
        
    }

    @IBAction func clockInTapped(_ sender: UIButton) {
        userDef.set(emailTF.text, forKey: "email")
        label.text = emailTF.text
        
    }
    
}

