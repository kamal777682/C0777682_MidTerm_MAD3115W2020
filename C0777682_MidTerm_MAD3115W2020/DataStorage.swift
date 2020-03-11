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
    lazy var customerBills = Dictionary<String,Bill>()
    
    
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
       var i1 = Internet(billId: "I001", billDate: "20/02/2019", billType: .Internet, internetProvider: "Rogers", internetGBUsed: 10, internetRate: 4.5)
       var i2 = Internet(billId: "I002", billDate: "14/03/2019", billType: .Internet, internetProvider: "Freedom", internetGBUsed: 5, internetRate: 3.0)
       var i3 = Internet(billId: "I003", billDate: "23/08/2019", billType: .Internet, internetProvider: "Freedom", internetGBUsed: 6, internetRate: 3.5)
       var h1 = Hydro(billId: "H001", billDate: "26/04/2018", billType: .Hydro,agencyName: "Planet Energy", unitConsumed: 200, rate: 0.90)
       var h2 = Hydro(billId: "H002", billDate: "03/09/2019", billType: .Hydro, agencyName: "OntarioHydro", unitConsumed: 700, rate: 0.75)
       var m1 = Mobile(billId: "M001", billDate: "07/09/2019", billType: .Mobile, manufacturerName: "Apple Inc.", mobileNumber: "4504500577", mobilePlan:"4.5GB + 1000 Min", internetGBUsed: 4, minuteUsed: 100, planRate: 0.95, internetRate: 5)
       var m2 = Mobile(billId: "M002", billDate: "08/09/2019", billType: .Mobile, manufacturerName: "Apple Inc.", mobileNumber: "78947800", mobilePlan:"4.5GB + 1000 Min", internetGBUsed: 2, minuteUsed: 200, planRate: 0.95, internetRate: 5)
        
       var c1 = Customer(customerId: "C001", firstName: "Kamalpreet", lastName: "Kaur", email: "kamal456@gmail.com")
       var c2 = Customer(customerId: "C002", firstName: "Nikita", lastName: "Sandhu", email: "niksandhu23@gmail.com")
       var c3 = Customer(customerId: "C003", firstName: "Jyoti", lastName: "Thomas", email: "jyotiT@outlook.com")
       var c4 = Customer(customerId: "C004", firstName: "Geet", lastName: "Gupta", email: "geetgupta@yahoo")
       var c5 = Customer(customerId: "C005", firstName: "Prianka", lastName: "Sharma", email: "priyanka456@yahoo.com")


       func addCustomer(customer : Customer , customerId : String)
       {
           customerList.updateValue(customer, forKey: customerId)
       }

        
   
/* let c1 = customerList.updateValue(Customer(customerId: "C001", firstName: "Kamalpreet", lastName: "kaur", email: "kamal342@gmail.com"),forKey: "C001")
        let c2  = customerList.updateValue(Customer(customerId: "C002", firstName: "Nikita", lastName: "Sandhu", email: "nsandhu@gmail.com"),forKey: "C002")
        let c3 = customerList.updateValue(Customer(customerId: "C003 ", firstName: "Jyoti", lastName: "Thomas", email: "Jthomas@yahho.com"),forKey: "C003")
        let c4 = customerList.updateValue(Customer(customerId: "C004", firstName: "Charmi", lastName: "Patel", email: "Charmi56@yahoo.com"), forKey: "C004")
        
        let i1 = customerBills.updateValue(Internet(billId: "I001", billDate: "20-01-2020", billType: .Internet, internetProvider: "Freedom", internetGBUsed: 4, internetRate: 3.0), forKey: "I001")!
                
        c1?.newBill(bill: i1, billId: "i001")?
    }
    
    
     func loadBills()
     {
        
 
        
            /*var i2 = Internet(billId: "I002", billDate: "14/03/2019", billType: .Internet, internetProvider: "Freedom", internetGBUsed: 5, internetRate: 3.0)
            var i3 = Internet(billId: "I003", billDate: "23/08/2019", billType: .Internet, internetProvider: "Freedom", internetGBUsed: 6, internetRate: 3.5)
            var h1 = Hydro(billId: "H001", billDate: "26/04/2018", billType: .Hydro,agencyName: "Planet Energy", unitConsumed: 200, rate: 0.90)
            var h2 = Hydro(billId: "H002", billDate: "03/09/2019", billType: .Hydro, agencyName: "OntarioHydro", unitConsumed: 700, rate: 0.75)
            var m1 = Mobile(billId: "M001", billDate: "07/09/2019", billType: .Mobile, manufacturerName: "Apple Inc.", mobileNumber: "4504500577", mobilePlan:"4.5GB + 1000 Min", internetGBUsed: 4, minuteUsed: 100, planRate: 0.95, internetRate: 5)*/
    }
*/
    
    
    func dictionaryToArray() -> [Customer]
    {
         var customerListStorage: [Customer] = []
           for i in customerList{
               customerList.append(i.value)
            }
           return customerList //       return Array(customerList.values)
    }
}
}
