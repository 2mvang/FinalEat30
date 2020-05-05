//
//  dataloader.swift
//  testEat30
//
//  Created by Marissa Vang on 5/4/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation

public class EventDataLoader {
    
    @Published var eventData = [EventData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "events", withExtension: "json"){
            
            //do catch in case of an error
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([EventData].self, from: data)
                
                self.eventData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        //sort by ascending sequence
        self.eventData = self.eventData.sorted(by: { $0.event_id < $1.event_id})
    }
}
