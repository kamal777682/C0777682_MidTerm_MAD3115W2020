//
//  HydroBillViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class HydroBillViewController: UIViewController {

    @IBOutlet weak var txtBillId: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtBillType: UITextField!
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var txtAgencyName: UITextField!
    @IBOutlet weak var txtUnitConsumed: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func btnSaveBill(_ sender: UIButton) {
    }
    
    var datePicker : UIDatePicker!
     
       //textField_Date.delegate = self
      
     
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

