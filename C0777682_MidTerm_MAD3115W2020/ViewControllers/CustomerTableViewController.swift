//
//  CustomerTableTableViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerTableViewController: UIViewController
{

    override func viewDidLoad() {
    super.viewDidLoad()
        
       // self.navigationController?.hidesBarsOnTap = true
        //Hide Back Button from navigation Bar
        //self.navigationItem.hidesBackButton = true
        
}

    @IBAction func btnLogout(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
}

       

