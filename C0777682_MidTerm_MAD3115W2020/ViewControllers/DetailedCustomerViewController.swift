//
//  DetailedCustomerViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class DetailedCustomerViewController: UIViewController
{
    var customer : Customer?
    
    @IBOutlet var txtCustomerID: UITextField!
    
    @IBOutlet var txtCustomerFName: UITextField!
    
    @IBOutlet var txtCustomerLName: UITextField!
    
    @IBOutlet var txtEmail: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "Customer Details"
        self.txtCustomerID.text = customer?.customerId
        self.txtCustomerFName.text = customer?.firstName
        self.txtCustomerLName.text = customer?.lastName
        self.txtEmail.text = customer?.email
    }
    
    @IBAction func btnCustomers(_ sender: UIBarButtonItem) {
          let customerListVC = self.navigationController?.viewControllers[1] as! CustomerListViewController
              self.navigationController?.popToViewController(customerListVC, animated: true)
        
    }
    @IBAction func btnLogout(_ sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    

    

       

}
