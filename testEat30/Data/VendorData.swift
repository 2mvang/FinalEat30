//
//  VendorData.swift
//  testEat30
//
//  Created by Marissa Vang on 5/5/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation

struct VendorData: Codable {
    
    var vendor_id: Int
    var vendor_name: String
    var vendor_address: String
    var vendor_price: String
}
