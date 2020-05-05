//
//  ViewController.swift
//  testEat30
//
//  Created by Marissa Vang on 5/4/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import UIKit

class EventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
//    @IBOutlet var eventName: UILabel!
//    @IBOutlet var eventAddress: UILabel!
    
    let eventTableData = EventDataLoader().eventData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventTableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            //as! EventInfoVC
        cell.textLabel?.text = eventTableData[indexPath.row].event_name
        
        return cell
        
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(identifier: "EventInfoVC") as? EventInfoVC
//        vc?.text = eventTableData[indexPath.row].event_name
//        self.navigationController?.pushViewController(vc!, animated: true)
//    }


}

