//
//  Hydro.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill
{
    var agencyName : String
    var unitConsumed : Int
    var rate : Double
    
    init(billId: String, billDate: String, billType: BillType,agencyName : String,unitConsumed : Int,rate : Double)
    {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        self.rate = rate
        super.init(billId: billId, billDate : billDate, billType: billType)
    }
    
    func calculateTotalBill() -> Double
    {
        totalBill = Double(self.unitConsumed) * self.rate
        return totalBill
    }
}
