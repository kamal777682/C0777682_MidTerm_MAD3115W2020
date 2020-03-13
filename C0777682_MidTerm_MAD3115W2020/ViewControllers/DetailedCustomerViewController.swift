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
                               
            let ShowBillVC = sb.instantiateViewController(withIdentifier: "ShowBillVC" ) as! ShowBillsViewController
             //  ShowBillVC.customerBill = sb
            self.navigationController?.pushViewController(ShowBillVC, animated: true)
               
        
}
}
    extension ShowBillsViewController: UITableViewDataSource, UITableViewDelegate
    {
        func numberOfSections(in tableView: UITableView) -> Int
        {
            return 1
        }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return self.bills.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BillTableViewCell") as!  BillTableViewCell
            let billList = bills[indexPath.row]
            if billList.billId.contains("M"){
                
                
                cell.lblBillID?.text = billList.billId
                cell.lblBillType.text = "Mobile"
                cell.lblBillDate?.text = billList.billDate
                cell.lblBillAmount.text = "\(billList.totalBill)"
                cell.backgroundColor = UIColor(displayP3Red: 0.98, green: 0.91, blue: 0.71, alpha: 1.0)
            }
            if billList.billId.contains("H")
            {
                cell.lblBillID?.text = billList.billId
                cell.lblBillType.text = "Hydro"
                cell.lblBillDate?.text = billList.billDate
                cell.lblBillAmount.text = "\(billList.totalBill)"
                cell.backgroundColor = UIColor(displayP3Red: 0.91, green: 1.0, blue: 1.0, alpha: 1.0)
            }
            if billList.billId.contains("I")
            {
                cell.lblBillID?.text = billList.billId
                cell.lblBillType.text = "Internet"
                cell.lblBillDate?.text = billList.billDate
                cell.lblBillAmount.text = "\(billList.totalBill)"
                cell.backgroundColor = UIColor(displayP3Red: 0.9, green: 0.9, blue: 0.98, alpha: 1.0)
            }
            return cell
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(150.0)
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            let customer = DataStorage.getInstance().dictionaryToArray()
            let sc = customer[indexPath.row]
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let detailedCustomerVC = sb.instantiateViewController(withIdentifier: "detailedCustomerVC") as! DetailedCustomerViewController
                   // let ShowBillVC = sb.instantiateViewController(withIdentifier: "ShowBillVC" ) as! ShowBillsViewController
                  // ShowBillVC.customerBill = sc
            detailedCustomerVC.customer = customer[indexPath.row]
            self.navigationController?.pushViewController(detailedCustomerVC, animated: true)
                   // self.navigationController?.pushViewController(ShowBillVC, animated: true)
                   
                   
    }}

     
       
    

       


