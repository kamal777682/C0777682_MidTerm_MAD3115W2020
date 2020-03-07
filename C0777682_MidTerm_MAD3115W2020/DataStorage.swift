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
        customerList.updateValue(Customer(customerId: "C001", firstName: "Kamalpreet", lastName: "kaur", email: "kamal342@gmail.com"),forKey: "C001")
        customerList.updateValue(Customer(customerId: "C002", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com"),forKey: "C002")
        customerList.updateValue(Customer(customerId: "C003 ", firstName: "Jyoti", lastName: "Thomas", email: "Jthomas@yahho.com"),forKey: "C003")
        customerList.updateValue(Customer(customerId: "C004", firstName: "Charmi", lastName: "Patel", email: "Charmi56@yahoo.com"), forKey: "C004")
    }
    
    func dictionaryToArray() -> [Customer]
    {
        return Array(customerList.values)
    }
}
