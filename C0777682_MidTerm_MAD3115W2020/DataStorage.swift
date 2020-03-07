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
    private lazy var customerList : [Customer] = []
    
    private init(){}
    
    static func getInstance() -> DataStorage
    {
        return instance
    }
    
    func addCustomer(customer : Customer)
    {
        self.customerList.append(customer)
    }
    func  getAllCustomers() -> [Customer]
    {
        return self.customerList
    }
    func loadCustomerDetails()
    {
        customerList.append(Customer(customerId: "C001", firstName: "Kamalpreet", lastName: "kaur", email: "kamal342@gmail.com"))
        customerList.append(Customer(customerId: "C002", firstName: "Nikita", lastName: "Sandhu", email: <#T##String#>))
    }
}
