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
        self.title = "SIGN IN"
    
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        if btnSwitch.isOn != true
        {
            txtEmail.text = ""
            txtPassword.text = ""
        }
    }
    
    
    @IBAction func btnLogin(_ sender: UIButton)
    {
        if sender.tag == 0
        {
             if(txtEmail.text?.isValidEmail() == true && txtPassword.text != "")
             {
                 let sb = UIStoryboard(name : "Main",bundle:  nil)
                 let customerListVC = sb.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListViewController
                 self.navigationController?.pushViewController(customerListVC, animated: true)
            }
            else
             {
                let alertController = UIAlertController(title: "Login Failed" , message:
                "Enter a valid Email", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
}
