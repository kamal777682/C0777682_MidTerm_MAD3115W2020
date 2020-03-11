//
//  Mobile.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Mobile : Bill{
   
  var billType : String = "Mobile"
  var mobileManufacturerName : String
  var planName : String
  var mobileNumber : String
  var internetGBUsed : Int
  var minuteUsed : Int
  init(billId: String, billDate: String, mobileManufacturerName : String, planName : String, mobileNumber : String, internetGBUsed : Int, minuteUsed : Int) {
    self.mobileManufacturerName = mobileManufacturerName
    self.planName = planName
    self.mobileNumber = mobileNumber
    self.internetGBUsed = internetGBUsed
    self.minuteUsed = minuteUsed
    super.init(billId: billId, billDate: billDate)
  }
}
