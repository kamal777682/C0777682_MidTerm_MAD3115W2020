//
//  Internet.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Internet : Bill{
   
  
  var internetProvider : String
  var internetGBUsed : Int
    
    init(billId: String, billDate: String,billType : BillType, internetProvider : String, internetGBUsed : Int)
    {
    self.internetProvider = internetProvider
    self.internetGBUsed = internetGBUsed
    super.init(billId: billId, billDate: billDate, billType: .Internet)
  }
}
