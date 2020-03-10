//
//  Customers.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : Bill
{
   
    var customerId : String
    var firstName : String
    var lastName : String
    lazy var bills = [String : Bill]()   //dictionary creation
    lazy var totalBillAmount : Double = 0.0
    var email : String
   
    init(customerId : String,firstName : String, lastName : String,email : String)
    {
        
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
         
    }
     
    func addBill(bill : Bill)
    {
        let billId = bill.billId
        bills.updateValue(bill, forKey: billId)
    }
    func removeBill(bill : Bill)
    {
        bills.removeValue(forKey: billId)
    }
    
     func calculateTotalBill()-> Double
         {
           for i in bills
           {
               totalBillAmount = totalBillAmount + i.value.totalBill
           }
           return totalBillAmount
         }
    
}
