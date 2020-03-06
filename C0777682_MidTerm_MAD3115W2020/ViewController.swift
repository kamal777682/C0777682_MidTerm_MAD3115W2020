//
//  ViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtEmail: UITextField!
    
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var btnSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        txtEmail.text = ""
        txtPassword.text = ""
    }
    @IBAction func btnLogin(_ sender: UIButton) {
        if (txtEmail.text?.isValidEmail())!
        {
            
        }
    }
    

}

