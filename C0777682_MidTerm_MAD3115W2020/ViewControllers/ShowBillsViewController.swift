//
//  ViewBillsViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillsViewController: UIViewController {

    var customer : Customer?
    var customerBill : Customer?
    var bills = [Bill]()
     //self.navigationItem.hidesBackButton = true
    @IBOutlet weak var tblData: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if customerBill != nil{
            bills = (customerBill?.getBills())!
        }
        print(bills);
        self.title = "Bill Details"
        //let cellID = String(describing : BillTableViewCell.self)
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool)
    {
        tblData.reloadData()
        
     self.navigationItem.hidesBackButton = true
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
                   
                   
    }
}
