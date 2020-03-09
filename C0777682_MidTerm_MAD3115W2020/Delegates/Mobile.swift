//
//  Mobile.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : Bill
{
    var manufacturerName : String
    var mobileNumber : String
    var mobilePlan :String
    var internetGBUsed : Int
    var minuteUsed : Int
    var planRate :  Double
    var internetRate : Double
    
    init(billId :String, billDate : String ,billType : BillType,  manufacturerName : String, mobileNumber : String, mobilePlan : String , internetGBUsed : Int, minuteUsed: Int,planRate : Double,internetRate : Double)
    {
        self.manufacturerName   = manufacturerName
        self.mobileNumber = mobileNumber
        self.mobilePlan = mobilePlan
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        self.planRate = planRate
        self.internetRate = internetRate
        super.init(billId: billId, billDate : billDate, billType: billType)
    }
    override func display()
    {
        super.display()
        print("Manufacturer Name    : \(manufacturerName)")
        print("Mobile NUmber        : \(mobileNumber)")
        print("Mobile Plan          : \(mobilePlan)")
        print("Internet Used (GB)   : \(internetGBUsed.dataUsed())")
        print("Internet Rate        : \(internetRate.curPerGB())")
        print("Talk Minutes         : \(minuteUsed.timeInMinutes())")
        print("Minutes  rate        : \(planRate.curPerMin())")
        print("MOBILE Bill Amount   : \(calculateTotalBill().cur())")
    }
    
    func calculateTotalBill()->Double
    {
        let internetbill = Double(self.internetGBUsed) * self.internetRate
        let mobilebill = Double(self.minuteUsed) * self.planRate
        totalBill = (internetbill + mobilebill)
        return totalBill
    }
    
