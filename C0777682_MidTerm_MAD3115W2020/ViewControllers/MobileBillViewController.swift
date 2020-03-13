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
    
    var datePicker : UIDatePicker!
     
    
      
     
     override func didReceiveMemoryWarning()
     {
       super.didReceiveMemoryWarning()
     }
     
     func textFieldDidBeginEditing(_ textField: UITextField)
     {
       self.pickUpDate(self.txtBillDate)
     }
     
     func pickUpDate(_ textField : UITextField)
     {
       self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
       self.datePicker.backgroundColor = UIColor.white
       self.datePicker.datePickerMode = UIDatePicker.Mode.date
       textField.inputView = self.datePicker
      
      
       //ToolBar
       let toolBar = UIToolbar()
       toolBar.barStyle = .default
       toolBar.isTranslucent = true
       toolBar.tintColor = .red//UIColor(red: 92/255, green: 216/255, blue 255/255, alpha : 1)
       toolBar.sizeToFit()
      
       //Adding Button ToolBar
      
       let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(HydroBillViewController.doneClick))
      
       let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
      
       let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(HydroBillViewController.cancelClick))
      
       toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
       toolBar.isUserInteractionEnabled = true
       textField.inputAccessoryView = toolBar
    }
    
     @objc func doneClick(){
       let dateFormatter1 = DateFormatter()
       dateFormatter1.dateStyle = .medium
       dateFormatter1.timeStyle = .none
        txtBillDate.text = dateFormatter1.string(from: datePicker.date)
       txtBillDate.resignFirstResponder()
     }
      
     @objc func cancelClick(){
       txtBillDate.resignFirstResponder()
     }

}
