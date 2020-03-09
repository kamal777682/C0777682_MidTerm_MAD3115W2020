//
//  Extension.swift
//  C0777682_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension String
{
       
    func isValidEmail() -> Bool //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
    {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }

    func isValidPhone() -> Bool //https://stackoverflow.com/questions/27998409/email-phone-validation-in-swift
    {
          let regularExpressionForPhone = "[0-9]{10}"
          let testPhone = NSPredicate(format:"SELF MATCHES %@", regularExpressionForPhone)
          return testPhone.evaluate(with: self)
    }
    
    
}

extension Int{
    func dataUsed () -> String{
        let data = String.init(format : "%i GB",self)
        return data
    }
     
    func timeInMinutes() -> String
    {
        let time = String.init(format: "%i min",self)
        return time
    }
}


extension Double
{
    func cur() ->String
    {
        let cur = String.init(format: "$%.2f",self)
        return cur
    }
    
    func curPerGB()->String
    {
        let cur_per_GB = String.init(format: "$%.2f/GB",self)
        return cur_per_GB
    }
    func curPerMin()-> String
    {
        let cur_per_min = String.init(format : "$%.2f/min",self)
        return cur_per_min
    }
    func curPerUnit()-> String
    {
        let cur_per_unit = String.init(format : "$%.2f/unit",self)
        return cur_per_unit
    }
}
