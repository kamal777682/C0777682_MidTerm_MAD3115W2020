//
//  DataStorage.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class DataStorage
{
    
    private  static let instance =  DataStorage()
    lazy var customerList = Dictionary<String, Customer>()
    
    var c1 = (Customer(customerId: "C001", firstName: "Kamalpreet", lastName: "kaur", email: "kamal342@gmail.com"))
    var c2 = (Customer(customerId: "C002", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu12@yahoo.com"))
    var c3 = (Customer(customerId: "C003", firstName: "Jyoti", lastName: "Thomas", email: "JyotiThomas@gmail.com"))
    var c4 = (Customer(customerId: "C004", firstName: "Charmi", lastName: "Patel", email: "Charmi56@yahoo.com"))
    var c5 = (Customer(customerId: "C005", firstName: "Avni", lastName: "Patel", email: "Avnip@gmail.com"))
    
    private init(){}
    
    static func getInstance() -> DataStorage
    {
        return instance
    }
    
    func addCustomer(customer : Customer)
    {
        let customerId = customer.customerId
        customerList.updateValue(customer, forKey: customerId)
    }
    
    
    func loadCustomerDetails()
    {
        addCustomer(customer: c1)
        addCustomer(customer: c2)
        addCustomer(customer: c3)
        addCustomer(customer: c4)
        addCustomer(customer: c5)
    }
    
    func dictionaryToArray() -> [Customer]
    {
        var cDictionary : [Customer] = []
        
        for i in cDictionary
        {
            cDictionary.append(i.value)
        }
        
    }
}
