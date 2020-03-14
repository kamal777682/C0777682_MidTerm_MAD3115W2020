//
//  MobileViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class MobileBillViewController: UIViewController {
    
    var customer : Customer?

    @IBOutlet weak var txtBillID: UITextField!
    
    @IBOutlet weak var txtBillType: UITextField!
    @IBOutlet weak var txtManufactureName: UITextField!
   
    @IBOutlet weak var txtMobilePlan: UITextField!
    
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var txtInternetUsed: UITextField!
    @IBOutlet weak var txtMinuteUsed: UITextField!
    
    @IBOutlet weak var txtBillDate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnCancel(_ sender: UIButton) {
        
         let sb = UIStoryboard(name: "Main", bundle: nil)
        let customerListVC = sb.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
        navigationController?.pushViewController(customerListVC, animated: true)
    }
    @IBAction func btnSaveBill(_ sender: UIButton) {
        if ((txtBillID.text == ""  && txtBillDate.text ==  "" ) && ( txtBillType.text == "" &&  txtManufactureName.text == "") && ( txtMobilePlan.text == "" && txtMobileNumber.text == "") &&  (txtInternetUsed.text == "" && txtBillDate.text == ""))
        {
            
            
                    let alertController = UIAlertController(title: "Failed", message:
                       "Enter new bill details", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
            }
               
        else if txtBillID.text == "" {
                   
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter Bill ID", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }
        else if txtMobileNumber.text == ""
        {
            let alertController = UIAlertController(title: "Failed", message:
                            "Enter the mobile Number", preferredStyle: .alert)
                          alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                          self.present(alertController, animated: true, completion: nil)
        }
        else if txtBillType.text == ""
               {
                   
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter BillType", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }
               
        else if txtInternetUsed.text == ""
               {
                   
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter the amount of internet used", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }
               
        else if txtMinuteUsed.text == ""
               {
                   let alertController = UIAlertController(title: "Failed", message:
                     "Enter the minutes used", preferredStyle: .alert)
                   alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                   self.present(alertController, animated: true, completion: nil)
               }
        else if txtMobilePlan.text == ""
        {
            let alertController = UIAlertController(title: "Failed", message:
                                "Enter the mobile Plan", preferredStyle: .alert)
                              alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                              self.present(alertController, animated: true, completion: nil)
        }
                
        else
               
        {
            //DataStorage.getInstance().addBill(bill: Mobile(billId: txtBillID.text ?? "", billDate: txtBillDate.text ?? "", billType: .Mobile, totalBill: txtBillAmount.text ?? "", manufacturerName: txtManufactureName.text ?? "", mobilePlan: txtMobilePlan.text ?? "" , mobileNumber: txtMobileNumber.text ?? "" , internetGBUsed: txtInternetUsed.text ?? "" , minuteUsed: txtMinuteUsed.text ?? "" ))
                     
            let tempOBJ = Mobile(billId: txtBillID.text ?? "", billDate: txtBillDate.text ?? "", billType: .Mobile, totalBill: Float(txtBillAmount.text ?? "")!, manufacturerName: txtManufactureName.text ?? "", mobilePlan: txtMobilePlan.text ?? "" , mobileNumber: txtMobileNumber.text ?? "" , internetGBUsed: Int(txtInternetUsed.text ?? "")! ,minuteUsed: Int( txtMinuteUsed.text ?? "" )!)
            
            customer?.addBill(bill: tempOBJ, billId: tempOBJ.billId)
            navigationController?.popViewController(animated: true)
            }
        }
    
}
