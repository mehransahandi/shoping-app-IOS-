//
//  DataServices.swift
//  shoping app
//
//  Created by Mehran Sahandi on 13.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import Foundation
class DataService{
    
    static let instance = DataService()
    
    private let categories = [
        Category(Title: "SHIRT", ImageName: "shirts.png"),
        Category(Title: "HODDIES", ImageName: "hoodies.png"),
        Category(Title: "HATS", ImageName: "hats.png"),
        Category(Title: "DIGITAL", ImageName: "digital.png")
        
        
    ]
    
    func GetCategory() ->[Category]{
        
        return categories
        
    }
    
}
