//
//  AddNewCustomerViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController{

    
     var customer : Customer?
    
     @IBOutlet var txtCustomerID: UITextField!
     @IBOutlet var txtCustomeFName: UITextField!
      
      @IBOutlet var txtCustomerLName: UITextField!
      
      
      @IBOutlet var txtCustomerEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       // viewDidAppear(true)
    }
    
    
    @IBAction func btnCustomerList(_ sender: UIBarButtonItem) {
        
         let customerListVC = self.navigationController?.viewControllers[1] as! CustomerListViewController
                           self.navigationController?.popToViewController(customerListVC, animated: true)
        
    }
    
    
    
    
    @IBAction func btnSaveCustomeAndAddBill(_ sender: UIBarButtonItem) {
        do {
        
        //self.navigationController?.popViewController(animated: true)
                 if ((txtCustomerID.text == "" && txtCustomeFName.text == "") && (txtCustomerLName.text == "" && txtCustomerEmail.text == ""))
                 {
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter new customer details", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }
                   else if txtCustomerID.text == ""{
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter Customer ID", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }else if txtCustomeFName.text == ""{
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter Customer First Name", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }else if txtCustomerLName.text == ""{
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter Customer Last Name", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                 }else if txtCustomerEmail.text == ""{
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter email", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }else{
                     if txtCustomerEmail.text?.isValidEmail() == true{
                       DataStorage.getInstance().addCustomer(customer: Customer(customerId: txtCustomerID.text ?? "", firstName: txtCustomeFName.text ?? "", lastName: txtCustomerLName.text ?? "", email: txtCustomerEmail.text ?? ""))
                       let alertController = UIAlertController(title: "Saved", message:
                         "New Customer created", preferredStyle: .alert)
                       alertController.addAction(UIAlertAction(title: "OK", style: .default))
                      // self.present(alertController, animated: true, completion: nil)
               
                        let sb = UIStoryboard(name: "Main", bundle: nil)
                       let customerListVC = sb.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
                       navigationController?.pushViewController(customerListVC, animated: true)
                                  }else{
                       let alertController = UIAlertController(title: "Failed", message:
                         "Enter valid email", preferredStyle: .alert)
                       alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                       self.present(alertController, animated: true, completion: nil)
                     }
                 //  self.navigationController?.popToRootViewController(animated: true)
                   
    }
}

}
}
