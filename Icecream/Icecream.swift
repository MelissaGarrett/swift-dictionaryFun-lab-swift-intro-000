//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream" ]
    
    
    
    
    // 2.
    // Pass in a flavor, return an array of people whose fav flavor matches
    func names(forFlavor flavor:String) -> [String] {
        var newArray: [String] = []
        
        for (name, iceCream) in favoriteFlavorsOfIceCream {
            if (iceCream == flavor) {
                newArray.append(name)
            }
        }
        return newArray
    }
    
    
    
    
    
    // 3.
    // pass in flavor, return the num of people whose fav flavor matches
    func count(forFlavor flavor:String) -> Int {
        var cnt = 0
        
        for (_, iceCream) in favoriteFlavorsOfIceCream {
            if (iceCream == flavor) {
                cnt += 1
            }
        }
        return cnt
    }
    
    
    
    
    
    
    // 4.
    // pass in a person, if he exists, return his fav flavor
    func flavor(forPerson person:String) -> String? {
        if favoriteFlavorsOfIceCream[person] != nil {
            return favoriteFlavorsOfIceCream[person]
        } else {
            return nil
        }
        
    }
    
    
    
    
    
    
    // 5.
    // pass in a flavor and person, if person exists,
    // update his flavor to new flavor
    func replace(flavor:String, forPerson person:String) -> Bool {
        let keyExists = favoriteFlavorsOfIceCream[person] != nil
        
        if (keyExists) {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            return true
        } else {
            return false // person didn't exist originally so no updating
        }
        
    }
    
    
    
    
    
    
    // 6.
    // pass in person, remove him from dictionary
    func remove(person:String) -> Bool {
        let result = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        
        if (result == nil) {
            return false // the person never existed
        } else {
            return true // the person was removed
        }
    }
    
    
    
    
    
    
    
    // 7.
    // return the total num of peoople in dictionary
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    // pass in person and flavor, add the key/value if it doesn't exist
    func add(person:String, withFlavor flavor:String) -> Bool {
        let keyExists = favoriteFlavorsOfIceCream[person] != nil
        
        if (keyExists) {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
    }
    
    
    
    
    
    
    
    
    // 9.
    // sort the dictionary by keys, return a string of each key/value
    func attendeeList() -> String {
        var newList = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for key in allNames {
            newList += ("\(key) likes \(favoriteFlavorsOfIceCream[key]!)\n")
        }
        
        // remove the last \n from the end of the string
        newList.remove(at: newList.index(before: newList.endIndex))
        
        return newList
    }
    
    
    
    
    
    
    
    

}
