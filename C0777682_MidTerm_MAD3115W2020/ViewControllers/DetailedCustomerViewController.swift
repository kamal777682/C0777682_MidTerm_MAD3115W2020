//
//  DetailedCustomerViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class DetailedCustomerViewController: UIViewController, UITextFieldDelegate
{
    var customer : Customer?
    
    
    @IBOutlet var txtCustomerID: UITextField!
    
    @IBOutlet var txtCustomerFName: UITextField!
    
    @IBOutlet var txtCustomerLName: UITextField!
    
    @IBOutlet var txtEmail: UITextField!
    
    
    @IBOutlet weak var btnViewBills: UIButton!
    
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
    
    @IBAction func btnAddBill(_ sender: UIButton) {
           let alert = UIAlertController(title: "Add new bill", message: "Select type of bill", preferredStyle: .actionSheet);
                 alert.addAction(UIAlertAction(title: "Hydro", style: .default, handler: { (action) in
                     
                     let sb = UIStoryboard(name: "Main", bundle: nil)
                     let HydroBillVC = sb.instantiateViewController(identifier: "HydroBillVC") as! HydroBillViewController
                     self.navigationController?.pushViewController(HydroBillVC, animated: true)
                     
                 }));
                 alert.addAction(UIAlertAction(title: "Mobile", style: .default, handler:{ (action) in
                     
                     let sb = UIStoryboard(name: "Main", bundle: nil)
                     let MobileBillVC = sb.instantiateViewController(identifier: "MobileBillVC") as! MobileBillViewController
                     self.navigationController?.pushViewController(MobileBillVC, animated: true)
                     
                 }));
                 alert.addAction(UIAlertAction(title: "Internet", style: .default, handler:{ (action) in
                     
                     let sb = UIStoryboard(name: "Main", bundle: nil)
                     let InternetBillVC = sb.instantiateViewController(identifier: "InternetBillVC") as! InternetBillViewController
                     self.navigationController?.pushViewController(InternetBillVC, animated: true)
                     
                 }));
                 self.present(alert, animated: true, completion: nil);
                     }
    

    @IBAction func btnViewBills(_ sender: UIButton) {
   
          
          let sb = UIStoryboard(name: "Main", bundle: nil)
          let viewBillVC = sb.instantiateViewController(withIdentifier: "viewBillVC" ) as! ViewBillsViewController
        viewBillVC.customerBill = self.customer
        navigationController?.pushViewController(viewBillVC, animated: true)
}
}
   
      
    
     
       
    

       


