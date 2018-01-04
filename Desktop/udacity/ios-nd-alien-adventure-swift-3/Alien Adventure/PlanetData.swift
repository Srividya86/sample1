//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawPlanetItemData = NSData(contentsOfURL: dataFileURL)!
        
        var planetItemData: [[String:AnyObject]]!
        do{
            planetItemData = try! JSONSerialization.JSONObjectWithData(rawPlanetItemData, options: NSJSONReadingOptions()) as! [[String:AnyObject]]
        }
        
        var planetWinner = String()
        var highestPoints = 0
        
        for planet in planetItemData{
            var currentPlanetTotal = 0
            if let planetName = planet["Name"] as? String{
                if let commonItemsDetected = planet["CommonItemsDetected"] as? Int{
                    currentPlanetTotal += (commonItemsDetected * 1)
                    print(currentPlanetTotal)
                    if let uncommonItemsDetected = planet["UncommonItemsDetected"] as? Int{
                        currentPlanetTotal += (uncommonItemsDetected * 2)
                        print(currentPlanetTotal)
                        if let rareItemsDetected = planet["RareItemsDetected"] as? Int{
                            currentPlanetTotal += (rareItemsDetected * 3)
                            print(currentPlanetTotal)
                            if let legendaryItemsDetected = planet["LegendaryItemsDetected"] as? Int{
                                currentPlanetTotal += (legendaryItemsDetected * 4)
                                print(currentPlanetTotal)
                                if currentPlanetTotal > highestPoints{
                                    highestPoints = currentPlanetTotal
                                    planetWinner = planetName
                                }
                                
                                
                            }
                        }
                    }
                }
            }
        }
        return planetWinner
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
