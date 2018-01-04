//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    if lhs.rarity != rhs.rarity {
        return lhs.rarity.rawValue < rhs.rarity.rawValue
    } else {
        return lhs.baseValue < rhs.baseValue
    }
}

//func <(lhs: UDItem, rhs: UDItem) -> Bool {
//    //How to access UDItem properties
//
////var s1 = UDItemRarity.common
////    print("UDItemRarity.legendary = \(UDItemRarity.legendary)")
////    print("UDItemRarity.rare = \(UDItemRarity.rare)")
////    print("UDItemRarity.rare = \(UDItemRarity.uncommon)")
////    print("s1 value = \(s1)")
//   // if rarity values are not equal then which object is less rare via rarity value
//    if lhs.rarity != rhs.rarity {
//        print("rarity values are not equal")
//    if lhs.rarity.rawValue < rhs.rarity.hashValue {
//        print("left itemis have less rarity")
//        return false
//    }
//    }
//
//    // when rarity is equal then test which object is less rare
//
//    if lhs.rarity == rhs.rarity {
//        print("Both rarity values are equal Then compare using Base value")
//        if lhs.baseValue < rhs.baseValue {
//            print("base value for item on left is \(lhs.baseValue).  base value for item on right is \(rhs.baseValue).  Item on left is more valuable.")
//            return false
//    }
//    }
//return true
//}
//
//struct TeamRecord {
//    var wins :Int
//    var losses :Int
//}
//
//func +(left: TeamRecord , right:TeamRecord) -> TeamRecord {
//    return TeamRecord(wins:left.wins+right.wins , losses: left.losses+right.losses)
//}
//
//    let record_2015 = TeamRecord(wins: 4, losses: 2)
//    let record_2016 = TeamRecord(wins: 6, losses: 3)
//
//let compareTeamRecord = record_2015 + record_2016


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
