//
//  JSON.swift
//  CharacterManager
//
//  Created by Crystal Jade Allen-Washington on 5/17/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import Foundation

class Character {
    
    let dictionary: [String: Any] = [
        "name": "Arthur",
        "classification": "Time Traveler",
        "stats": [
            "agility": 41,
            "strength": 25,
            "charisma": 34,
            ]
    ]
    
    struct Arthur {
        let name: String
        let classification: String
        let stats: [String: Int]
        
        init(name: String, classification: String, stats: [String: Int]) {
            self.name = name
            self.classification = classification
            self.stats = stats
        }
        
        init?(jsonDictionary: [String: Any]) {
            guard let name = jsonDictionary["name"] as? String,
                let classification = jsonDictionary["classification"] as? String,
                let stats: [String: Int]  = jsonDictionary["stats"] as? [String: Int] else  {
                    return nil
            }
            self.init(name: name, classification: classification, stats: stats)
        }
    }
}
