//
//  ProductsVCViewController.swift
//  shoping app
//
//  Created by Mehran Sahandi on 14.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var productcollection:UICollectionView!
    
    
    
   
    
// empty array of products
    private (set) public var products = [ProductStruct] ()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productcollection.dataSource = self
        productcollection.delegate = self
  
    }

    
    // function to use to sent data from categoryVC
    func initProducts(category : CategoryStruct) {
        
        products = DataService.instance.GetProducts(forCategoryTitle: category.Title)
        navigationItem.title = category.Title
        
    }
    
    // collectionView protocols
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCellCollectionView {
            let product = products[indexPath.row]
            cell.updateviews(product: product)
            return cell
            
        }
        
        return ProductCellCollectionView()
        
        
        
    }

}
