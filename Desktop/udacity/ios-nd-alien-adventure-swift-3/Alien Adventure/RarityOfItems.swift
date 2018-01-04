//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var rarityDictionary:[UDItemRarity:Int] =  [.common:0, .uncommon:0, .rare:0, .legendary:0]
        
        if inventory.isEmpty {
            return rarityDictionary
        }
        for item in inventory {
            switch item.rarity {
            case .common:
                rarityDictionary[.common]?+=1
            case .uncommon:
                rarityDictionary[.uncommon]?+=1
            case .rare:
                rarityDictionary[.rare]?+=1
            case .legendary:
                rarityDictionary[.legendary]?+=1
            }
        }
return rarityDictionary
    }
}

/*To complete this exercise, correctly implement the rarityOfItems method. This method should perform the following tasks:

Create a dictionary that keeps a count of how many items in the inventory are common, uncommon, rare, and legendary.
For each item in the inventory, determine its rarity and then add one to the running count for that rarity.
Return the dictionary.
*/
// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
