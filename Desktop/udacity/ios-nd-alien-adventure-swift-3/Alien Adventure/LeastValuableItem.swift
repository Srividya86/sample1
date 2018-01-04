//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    
    //TODO
//    Check the number of items in the inventory.
//    If the inventory is empty, return nil.
//    Otherwise, begin searching for the least valuable item.
//    Return the item in the inventory with this the smallest baseValue (i.e. “the least valuable”)
    
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
      
        var intialBaseValueItem:UDItem?
        //for item in inventory {
            if inventory.count == 0 {
                return nil
            }
            else {
                intialBaseValueItem = inventory[0]
                for item in inventory {
                    if let currentLowestItem = intialBaseValueItem {
                        if item.baseValue < currentLowestItem.baseValue {
                            intialBaseValueItem = item
                        }
                    }
                }
                return intialBaseValueItem
        }
    }
}
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
