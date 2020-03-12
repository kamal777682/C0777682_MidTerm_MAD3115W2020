//
//  Hydro.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Hydro : Bill{
   
 
  var agencyName : String
  var unitConsumed : String
   
    init(billId: String, billDate: String,billType : BillType , agencyName : String, unitConsumed : String)
    {
    self.agencyName = agencyName
    self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: .Internet)
  }
}
