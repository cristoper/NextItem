//
//  ItemArray.swift
//  NextItem
//
//  Created by cris on 8/4/17.
//

import Foundation

struct ItemArray {
    var items: [String] = []

    init (plistName name: String = "items") {
        let path = Bundle.main.path(forResource: name, ofType: "plist")!
        let data = FileManager.default.contents(atPath: path)
        
        do {
            try items = PropertyListSerialization.propertyList(
                from: data!,
                options:PropertyListSerialization.MutabilityOptions.mutableContainers,
                format: nil) as! [String]
        } catch let e as NSError {
            print(e.localizedDescription)
        }
    }
    
    func randomItem() -> String {
        let numItems = UInt32(items.count)
        let randomIndex = Int(arc4random_uniform(numItems))
        
        return items[randomIndex]
    }
}


