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
    var listPrice : String = ""
    var mls : Int = 0
    var grossIncome : String = ""
    var listDate : String = ""
    var closeDate : String = ""
    var closePrice : String = ""
    
    init(location : String, listPrice : String, mls : Int, grossIncome: String, listDate: String, closeDate: String, closePrice: String) {
        self.location = location
        self.listPrice = listPrice
        self.mls = mls
        self.grossIncome = grossIncome
        self.listDate = listDate
        self.closeDate = closeDate
        self.closePrice = closePrice
        
    }
    
}
