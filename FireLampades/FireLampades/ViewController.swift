//
//  ViewController.swift
//  FireLampades
//
//  Created by Bartosz Kosarzycki on 1/11/17.
//  Copyright © 2017 Bartosz Kosarzycki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    @IBAction func submitButtonTap(sender: UIButton) {
        print("Username = \(username.text ?? "Undefined")")
        print("Password = \(password.text ?? "Undefined")")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

