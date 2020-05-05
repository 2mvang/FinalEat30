//
//  VendorInfoVC.swift
//  testEat30
//
//  Created by Marissa Vang on 5/5/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation
import UIKit

class VendorInfoVC: UIViewController {

    @IBOutlet var vendorName: UILabel!
    @IBOutlet var vendorAddress: UILabel!
    @IBOutlet var vendorPrice: UILabel!
    

    let vendorTableData = VendorDataLoader().vendorData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        vendorName.text = vendorTableData[indexPath.row].vendor_name
        
        
        
    }
    
    @IBAction func writeReview(_ sender: Any) {
        
    }
    
//        nameLable.vendorName.text = vendorTableData[indexPath.row].vendor_name

}
