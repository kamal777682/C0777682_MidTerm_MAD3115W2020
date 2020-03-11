//
//  MobileViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class MobileBillViewController: UIViewController {

    @IBOutlet weak var txtBillID: UITextField!
    
    @IBOutlet weak var txtBillType: UITextField!
    @IBOutlet weak var txtManufactureName: UITextField!
   
    @IBOutlet weak var txtMobilePlan: UITextField!
    
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var txtInternetUsed: UITextField!
    @IBOutlet weak var txtMinuteUsed: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnSaveBill(_ sender: UIButton) {
    }
    
    


}
