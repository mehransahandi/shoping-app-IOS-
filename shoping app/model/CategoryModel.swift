//
//  CategoryModel.swift
//  shoping app
//
//  Created by Mehran Sahandi on 13.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import Foundation
struct Category {
    private (set) public var Title : String
    private (set) public var ImageName : String
    
    init (Title : String, ImageName : String) {
        
        self.ImageName = ImageName
        self.Title = Title
    }
}
