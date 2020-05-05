//
//  VendorViewController.swift
//  testEat30
//
//  Created by Marissa Vang on 5/5/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation
import UIKit

class VendorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!

    
    let vendorTableData = VendorDataLoader().vendorData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vendorTableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vendorcell", for: indexPath)
            //as! EventInfoVC
        cell.textLabel?.text = vendorTableData[indexPath.row].vendor_name
        
        return cell
    }
    
//     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            let vc = storyboard?.instantiateViewController(identifier: "VendorInfoVC") as? VendorInfoVC
////            vc?.text = vendorTableData[indexPath.row].vendor_name
//            self.navigationController?.pushViewController(vc!, animated: true)
//        }

}
