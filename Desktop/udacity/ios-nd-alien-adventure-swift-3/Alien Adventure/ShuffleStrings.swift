//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        }
        
        let firstTry = s1 + s2
        if shuffle.characters.count != firstTry.characters.count {
            return false
        }
        
        let shuffleAll = String(shuffle.characters.prefix(4))
        let string1A = String(s1.characters.prefix(1))
        let string1B = String(s1.characters.suffix(1))
        let string2A = String(s2.characters.prefix(1))
        let string2B = String(s2.characters.suffix(1))
        let stringSet1 = String(string1A) + String(string1B)
        let stringSet2 = String(string2A) + String(string2B)
        let stringSet3 = String(string1A) + String(string2A)
        let stringSet4 = String(string1B) + String(string2B)
        
        switch shuffleAll {
        case stringSet1 + stringSet2:
            return true
        case stringSet3 + stringSet4:
            return true
        default:return false
        }
    }

//    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
//
//        guard !s1.isEmpty && !s2.isEmpty && !shuffle.isEmpty else {
//            return false
//        }
//        
//        if (s1.characters.count + s2.characters.count) != shuffle.characters.count {
//            print("Not blank and character count doesn't match")
//            return true
//        } else {
//            
//            let s1Char1 = s1[s1.characters.startIndex]
//            //let s1Char2 = self[index(startIndex, offsetBy: s1)]
//            let s1Char2Index = s1.index(s1.startIndex, offsetBy: 1)
//            let s1Char2 = s1[s1Char2Index]
//            //let s1Char2 = s1[s1.characters.indexOf(s1[s1.successor()])]
//            let s2Char1 = s2[s2.characters.startIndex]
//            //let s2Char2 = s2[s2.characters.startIndex.successor()]
//            let s2Char = s2.index(s2.startIndex, offsetBy: 1)
//            let s2Char2 = s2[s2Char]
//            let s1Char1IndexOfShuffle = shuffle.characters.index(of: s1Char1)
//            
//            let s1Char2IndexOfShuffle = shuffle.characters.index(of: s1Char2)
//            let s2Char1IndexOfShuffle = shuffle.characters.index(of: s2Char1)
//            let s2Char2IndexOfShuffle = shuffle.characters.index(of: s2Char2)
//
//            if s1Char2 > s1Char1 && s2Char2 > s2Char1 {
//                return false
//            }
//            return true
    
//
//        } else {
//            validation = false
//            print("Not blank and character count doesn't match")
//        }
//        return true
//    }



    
}
