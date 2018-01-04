//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        // Declare a variable that holds an array of UDItems that has the name “MoonRock”
        var moonrockItems = [UDItem]()
         // Loop through the items in the inventory...
               for item in inventory {
                 // if the item's name is 'MoonRock'...
                
           if item.name == "MoonRock" {
            // ... then append the item to the array of UDItems
            moonrockItems.append(item)
        print(" itemID is \(item.itemID) and nameofitem \( item.name)")
               }
        }
         // return array of UDItems
        return moonrockItems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
