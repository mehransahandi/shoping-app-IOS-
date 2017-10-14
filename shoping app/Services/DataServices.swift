//
//  DataServices.swift
//  shoping app
//
//  Created by Mehran Sahandi on 13.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import Foundation
class DataService{
    
    static let instance = DataService() // onle one coppy in memory
    
    private let categoriesDS = [
        CategoryStruct(Title: "SHIRT", ImageName: "shirts.png"),
        CategoryStruct(Title: "HOODIES", ImageName: "hoodies.png"),
        CategoryStruct(Title: "HATS", ImageName: "hats.png"),
        CategoryStruct(Title: "DIGITAL", ImageName: "digital.png")
        
        
    ]
    
    //----------------
    func GetCategory() ->[CategoryStruct]{
        
        return categoriesDS
        
    }
    
   // =================
    
    private let hats = [
        
        ProductStruct(title: "Logo Graphic logo T-shirt", price: "$25", imageName: "hat01.png"),
        ProductStruct(title: "Logo Graphic logo Hat Black", price: "$22", imageName: "hat02.png"),
        ProductStruct(title: "Logo Graphic logo Hat white ", price: "$22", imageName: "hat03.png"),
        ProductStruct(title: "Logo Graphic Snapback", price: "$20", imageName: "hat04.png")
        
    ]
    
    
    private let Hoodies = [
        
        ProductStruct(title: "Logo Graphic logo Hoodies Grey", price: "$32", imageName: "hoodie01.png"),
        ProductStruct(title: "Logo Graphic logo Hoodies Red", price: "$32", imageName: "hoodie02.png"),
        ProductStruct(title: "Logo Graphic logo Hoodies Black", price: "$32", imageName: "hoodie03.png"),
        ProductStruct(title: "Logo Graphic Hoodies White", price: "$32", imageName: "hoodie04.png")
        
    ]
    
    private let shirts = [
        
        ProductStruct(title: "Logo Graphic logo Shirt Balck", price: "$18", imageName: "shirt01.png"),
        ProductStruct(title: "Logo Graphic Badge Shirt light Gray", price: "$18", imageName: "shirt02.png"),
        ProductStruct(title: "Logo Graphic logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        ProductStruct(title: "Husstle delegate Grey", price: "$18", imageName: "shirt04.png"),
        ProductStruct(title: "Kickflip Studios Black ", price: "$18", imageName: "shirt05.png"),
        
        
    ]
    
    
    private let digitalGoods = [ProductStruct]()
        
      
        
    func GetProducts(forCategoryTitle title:String) ->[ProductStruct]{
        
        switch title {
        case "SHIRT":
           return getShirts()
        case "HATS":
          return  getHats()
        case "HOODIES":
          return  getHoodies()
        case "DIGITAL":
         return   getDigitalGoods()
        default:
          return  getShirts()
        }
        
    }
    
    
    func getHats() -> [ProductStruct]{
        return hats
        
    }
    
    func getHoodies() -> [ProductStruct]{
        return Hoodies
        
    }
    
    func getShirts() -> [ProductStruct]{
        return shirts
        
    }
    
    func getDigitalGoods() -> [ProductStruct]{
        
        return digitalGoods
    }
   
}
