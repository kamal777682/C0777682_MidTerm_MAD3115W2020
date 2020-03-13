//
//  Bill.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum BillType {
    case Mobile
    case Internet
    case Hydro
}

class Bill 
{
    var billId :  String
    var billDate : String
    var billType : BillType
    var totalBill :Float
       
    init(billId : String,billDate : String, billType : BillType, totalBill : Float)
 {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBill = totalBill
}
     func dateFormat(string : String)-> String
           
       {
           let getdate = DateFormatter()
           getdate.dateFormat = "dd/MM/yyyy"
           
           let setdate = DateFormatter()
           setdate.dateFormat = "EEEE,d MMMM ,yyyy"
           let date : Date? =  getdate.date(from: billDate)
           return setdate.string(from: date!)
             
       }}
