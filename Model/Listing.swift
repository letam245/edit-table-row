//
//  Listing.swift
//  edit table row
//
//  Created by Tammy Le on 10/10/18.
//  Copyright © 2018 Tammy Le. All rights reserved.
//

import Foundation

class Listing {
    
    var location : String = ""
    var price : Int = 0
    var mls :Int = 0
    var grossIncome : Int = 0
    var listDate : String = ""
    var closeDate : String = ""
    var closePrice : Int = 0
    
    init(location : String, price : Int, mls : Int, grossIncome: Int, listDate: String, closeDate: String, closePrice: Int) {
        self.location = location
        self.price = price
        self.mls = mls
        self.grossIncome = grossIncome
        self.listDate = listDate
        self.closeDate = closeDate
        self.closePrice = closePrice
        
    }
    
}
