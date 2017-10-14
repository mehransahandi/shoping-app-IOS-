//
//  ProductCellCollectionViewCell.swift
//  shoping app
//
//  Created by Mehran Sahandi on 14.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import UIKit

class ProductCellCollectionView: UICollectionViewCell {
    
    @IBOutlet weak var ProductImage : UIImageView!
    @IBOutlet weak var ProductTitle : UILabel!
    @IBOutlet weak var ProductPrice : UILabel!
    
    func updateviews(product: ProductStruct) {
        
        ProductImage.image = UIImage(named : product.imageName)
        ProductTitle.text = product.price
        ProductPrice.text = product.title
        
    }
    
}
