//
//  Mobile.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Mobile : Bill{
   
 
  var manufacturerName : String
  var mobilePlan : String
  var mobileNumber : String
  var internetGBUsed : String
  var minuteUsed : String
    init(billId: String, billDate: String,billType : BillType, manufacturerName : String, mobilePlan : String, mobileNumber : String, internetGBUsed : String, minuteUsed : String) {
    self.manufacturerName = manufacturerName
    self.mobilePlan = mobilePlan
    self.mobileNumber = mobileNumber
    self.internetGBUsed = internetGBUsed
    self.minuteUsed = minuteUsed
        super.init(billId: billId, billDate: billDate,billType : .Mobile)
  }
}
