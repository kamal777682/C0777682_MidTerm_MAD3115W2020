//
//  CustomerTableTableViewController.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerTableViewController: UIViewController
{

   
    @IBOutlet var tblCustomers: UITableView!
    lazy var customerName : [Customer] = []
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        //customerName = DataStorage.getInstance().loadCustomerDetails()
        
       // self.navigationController?.hidesBarsOnTap = true
        //Hide Back Button from navigation Bar
        //self.navigationItem.hidesBackButton = true
        
}

    @IBAction func btnLogout(_ sender: UIBarButtonItem)
    {
        self.navigationController?.popViewController(animated: true)
    }
}

extension CustomerTableViewController:UITableViewDelegate,UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customerName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        let customer = customerName[indexPath.row]
        
        cell?.textLabel?.text = customer.firstName
            
        return cell!
    }
    
    // to set height of the row
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    
    // to set header and footer of tables
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Customer Name"
    }
    
    // to display selected row
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let c = DataStorage.getInstance().dictionaryToArray()
        let sc = c[indexPath.row]
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let customerDetails = sb.instantiateViewController(identifier: <#T##String#>)
        print("\(c.firstName) \(c.lastName)")
    }
}
       

