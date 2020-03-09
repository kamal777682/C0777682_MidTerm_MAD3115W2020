//
//  Internet.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet
{
   var internetProvider : String
   var internetGBUsed : Int
   var internetRate :Double
   
   init(internetProvider : String ,internetGBUsed : Int, internetRate : Double )
   {
       self.internetProvider = internetProvider
       self.internetGBUsed = internetGBUsed
       self.internetRate = internetRate
       
   }
}
