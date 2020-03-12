//
//  InternetViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class InternetBillViewController: UIViewController {
    
    var customer : Customer?
    var bill : Bill?

    @IBOutlet weak var txtBillID: UITextField!
    @IBOutlet weak var txtBillType: UITextField!
    @IBOutlet weak var txtInternetProvider: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtInternetUsed: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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


    @IBAction func btnSaveBill(_ sender: UIButton) {
        if ((txtBillID.text == ""  && txtBillDate.text ==  "" )&&(txtBillType.text == "" && txtBillType.text == "" ) && txtInternetUsed.text == "")
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
        else if txtInternetProvider.text == ""
        {
            let alertController = UIAlertController(title: "Failed", message:
              "Enter the internet provider name", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
        }
        else
        {
            DataStorage.getInstance().addBill(bill: Bill()
        let customerListVC = self.navigationController?.viewControllers[1] as! CustomerListViewController
                                  self.navigationController?.popToViewController(customerListVC, animated: true)    }
    
}

