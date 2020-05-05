//
//  EventInfo.swift
//  testEat30
//
//  Created by Marissa Vang on 5/5/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation
import UIKit

class EventInfoVC: UIViewController {

    @IBOutlet var eventName: UILabel!
    @IBOutlet var eventAddress: UILabel!
    @IBOutlet var eventPrice: UILabel!

    let eventTableData = EventDataLoader().eventData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        eventName.text = eventTableData[indexPath.row].event_name
        
        
        
    }
    
    @IBAction func writeReview(_ sender: Any) {
        
    }
    
//        nameLable.eventName.text = eventTableData[indexPath.row].event_name

}
