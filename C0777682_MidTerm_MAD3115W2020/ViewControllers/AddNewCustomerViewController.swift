//
//  AddNewCustomerViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCustDetails(_ sender: UIBarButtonItem)
    {
        
       let customerVC = self.navigationController?.viewControllers[1] as! CustomerTableViewController
        self.navigationController?.popToViewController(customerVC, animated: true)
    }
    
    
    @IBAction func btlLogout(_ sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewController(animated: true)  }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
