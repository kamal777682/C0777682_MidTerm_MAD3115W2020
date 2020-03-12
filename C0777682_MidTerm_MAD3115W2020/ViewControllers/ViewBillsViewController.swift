//
//  ViewBillsViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewBillsViewController: UIViewController {

    var customerBill : Customer?
    var bills = [Bill]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.bills = (customerBill?.getBills())!
        self.title = "Bill Details"
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAddBills(_ sender: UIBarButtonItem) {
     
        }
    
}

    
extension ViewBillsViewController: UITableViewDataSource, UITableViewDelegate
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
                
                cell.lblBillId?.text = billList.billId
                //cell.lblBilltype?.text = billList.billType
                cell.lblBillDate?.text = billList.billDate
                cell.lblBillAmount.text = String(format:"$%.2f")
                cell.backgroundColor = UIColor(displayP3Red: 0.98, green: 0.91, blue: 0.71, alpha: 1.0)
            }
            if billList.billId.contains("H")
            {
                cell.lblBillId?.text = billList.billId
                //cell.lblBilltype?.text = billList.billType
                cell.lblBillDate?.text = billList.billDate
                cell.lblBillAmount.text = String(format:"$%.2f")
                cell.backgroundColor = UIColor(displayP3Red: 0.91, green: 1.0, blue: 1.0, alpha: 1.0)
            }
            if billList.billId.contains("I")
            {
                cell.lblBillId?.text = billList.billId
                //cell.lblBilltype?.text = billList.billType
                cell.lblBillDate?.text = billList.billDate
                cell.lblBillAmount.text = String(format:"$%.2f")
                cell.backgroundColor = UIColor(displayP3Red: 0.9, green: 0.9, blue: 0.98, alpha: 1.0)
            }
            return cell
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(150.0)
        }
}
