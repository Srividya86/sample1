//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
//    Look through the inventory for an item with an inscription containing the string “THE ETERNAL STAR”.
//    If an item with such an inscription is found, then return it!
//    Otherwise, return nil.
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        // loop through inventory
        for item in inventory {
            
            // Find an item in inventory with an inscription string “THE ETERNAL STAR”
            if let itemInscription =  item.inscription {
                if itemInscription.contains("THE ETERNAL STAR")   {
                    
                    return item
                    
                    // return inscription name
                }

            }
            
            //return nill if item is not founc with it
            
        }
        return nil
        
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
