//
//  HydroBillViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class HydroBillViewController: UIViewController,UITextFieldDelegate {
    
    var customer : Customer?

    @IBOutlet weak var txtBillId: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillType: UITextField!
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var txtAgencyName: UITextField!
    @IBOutlet weak var txtUnitConsumed: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtBillDate.delegate = self
    }
    
    @IBAction func btnSaveBill(_ sender: UIButton) {
        if ((txtBillId.text == ""  && txtBillDate.text ==  "" ) && ( txtBillType.text == "" &&  txtBillAmount.text == "" ) && (txtAgencyName.text == "" && txtUnitConsumed.text == ""))
        {
            
            
                    let alertController = UIAlertController(title: "Failed", message:
                       "Enter new bill details", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
            }
               
        else if txtBillDate.text == "" {
                   
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter Bill Date", preferredStyle: .alert)
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
               
        else if txtBillAmount.text == ""
               {
                   
                     let alertController = UIAlertController(title: "Failed", message:
                       "Enter the  bill amount", preferredStyle: .alert)
                     alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                     self.present(alertController, animated: true, completion: nil)
                   }
               
        else if txtAgencyName.text == ""
               {
                   let alertController = UIAlertController(title: "Failed", message:
                     "Enter the agency Name", preferredStyle: .alert)
                   alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                   self.present(alertController, animated: true, completion: nil)
               }
        else if txtUnitConsumed.text == ""
        {
            let alertController = UIAlertController(title: "Failed", message:
                                "Enter the Unit Consumed", preferredStyle: .alert)
                              alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
                              self.present(alertController, animated: true, completion: nil)
        }
                
        else
               
        {
            
            let tempOBJ = Hydro(billId: txtBillId.text ?? "" , billDate: txtBillDate.text ?? "", billType: .Hydro  , totalBill: Float(txtBillAmount.text ??  "")!, agencyName: txtAgencyName.text ?? "" , unitConsumed: Int(txtUnitConsumed.text ?? "")!)
            
            customer?.addBill(bill: tempOBJ, billId: tempOBJ.billId)
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let ShowBillVC = sb.instantiateViewController(withIdentifier: "ShowBillVC" ) as! ShowBillsViewController
            //self.navigationController?.pushViewController(ShowBillVC, animated: true)
            navigationController?.popViewController(animated: true)
            //print(tempOBJ)
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

