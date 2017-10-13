//
//  CategoriesCellTableViewCell.swift
//  shoping app
//
//  Created by Mehran Sahandi on 13.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import UIKit

class CategoriesCellTableViewCell: UITableViewCell {

    @IBOutlet weak var CategoryImage : UIImageView!
    @IBOutlet weak var CategoryTitle : UILabel!
    
   

    func updateview (categories : Category) {
        
      CategoryImage.image = UIImage(named: categories.ImageName)
        CategoryTitle.text = categories.Title
        
        
        
    }

}
