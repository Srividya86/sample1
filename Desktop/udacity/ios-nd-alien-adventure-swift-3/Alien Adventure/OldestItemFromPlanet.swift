//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        //Use for loop to iterate over Inventory and PlanetOf Origin == Planet
        var oldestItem: UDItem?
        let zeroAge = 0
        for item in inventory {
            if let keyValue = item.historicalData["PlanetOfOrigin"] as? String, keyValue == planet   {
                
                if let carbonAge = item.historicalData["CarbonAge"] as? Int, carbonAge > zeroAge {
                    oldestItem = item
                    print("oldestItem \(String(describing: oldestItem))")
                }
                print("keyValue \(keyValue)")

            }
                }
        
        // If Planet of Origin == Planet then find Oldest item Based on UDItem(carbonage) as a Key
        return oldestItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
