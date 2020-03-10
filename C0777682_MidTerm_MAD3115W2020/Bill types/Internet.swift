//
//  Internet.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet : Bill
{
    
    var internetProvider : String
    var internetGBUsed : Int
    var internetRate :Double
    
    init(billId:String, billDate: String, billType: BillType,internetProvider : String ,internetGBUsed : Int, internetRate : Double )
    {
        self.internetProvider = internetProvider
        self.internetGBUsed = internetGBUsed
        self.internetRate = internetRate
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
    
   
    func calculateTotalBill() -> Double {
        totalBill = Double((self.internetGBUsed)) * self.internetRate
        return totalBill
    }
    
}
