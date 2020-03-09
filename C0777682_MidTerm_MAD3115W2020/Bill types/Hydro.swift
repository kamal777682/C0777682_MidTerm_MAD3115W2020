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
    
    override func display()
    {
        super.display()
        print("Agency Name          : \(self.agencyName)")
        print("Unit Consumed        : \(self.unitConsumed) units")
        print("Hydro Rate Per Units : \(self.rate.curPerUnit())")
        print("HYDRO Bill Amount    : \(self.calculateTotalBill().cur())")    }
    
    func calculateTotalBill() -> Double
    {
        totalBill = Double(self.unitConsumed) * self.rate
        return totalBill
    }
}