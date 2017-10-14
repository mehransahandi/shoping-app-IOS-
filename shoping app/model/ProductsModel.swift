//
//  ProductsModel.swift
//  shoping app
//
//  Created by Mehran Sahandi on 14.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import Foundation

struct ProductStruct {
    
    private(set) public var title:String
    private(set) public var price:String
    private(set) public var imageName:String
    
    init(title : String, price : String , imageName : String) {
        self.title = title
        self.price = price
        self.imageName = imageName
        
        
    }
    
}
