//
//  AddNewCustomerViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {

      @IBOutlet var txtCustomerID: UITextField!
      @IBOutlet var txtCustomeFName: UITextField!
      
      @IBOutlet var txtCustomerLName: UITextField!
      
      
      @IBOutlet var txtCustomerEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func btnCustDetails(_ sender: UIBarButtonItem)
    {
        
       let customerListVC = self.navigationController?.viewControllers[1] as! CustomerListViewController
        self.navigationController?.popToViewController(customerListVC, animated: true)
    }
    
    
    
    @IBAction func btnSaveCustomer(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
          if ((txtCustomerID.text == "" && txtFirstName.text == "") && (txtLastName.text == "" && txtEmail.text == "")){
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
            }else if txtFirstName.text == ""{
              let alertController = UIAlertController(title: "Failed", message:
                "Enter Customer First Name", preferredStyle: .alert)
              alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
              self.present(alertController, animated: true, completion: nil)
            }else if txtLastName.text == ""{
              let alertController = UIAlertController(title: "Failed", message:
                "Enter Customer Last Name", preferredStyle: .alert)
              alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
              self.present(alertController, animated: true, completion: nil)
            }else if txtEmail.text == ""{
              let alertController = UIAlertController(title: "Failed", message:
                "Enter email", preferredStyle: .alert)
              alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
              self.present(alertController, animated: true, completion: nil)
            }else{
              if txtEmail.text?.emailValid() == true{
                DataStorage.getInstance().addCustomer(customer: Customer(customerId: txtCustomerID.text ?? "", firstName: txtFirstName.text ?? "", lastName: txtLastName.text ?? "", email: txtEmail.text ?? ""))
                let alertController = UIAlertController(title: "Saved", message:
                  "New Customer created", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
        //        let sb = UIStoryboard(name: "Main", bundle: nil)
        //        let customerListVC = sb.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
        //        self.navigationController?.pushViewController(customerListVC, animated: true)
        //
              }else{
                let alertController = UIAlertController(title: "Failed", message:
                  "Enter valid email", preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                self.present(alertController, animated: true, completion: nil)
              }
            }
    }
    
   

}
