//
//  ViewController.swift
//  shoping app
//
//  Created by Mehran Sahandi on 13.10.2017.
//  Copyright © 2017 Mehran Sahandi. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.GetCategory().count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoriesCell{
        let categories = DataService.instance.GetCategory()[indexPath.row]
           
            cell.updateview(categories : categories)
            
           return cell
            
        }else {
            
            return CategoriesCell()
        }
        
    }
    

    
    @IBOutlet weak var CategoryTable : UITableView! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        CategoryTable.dataSource = self
        CategoryTable.delegate = self
    }
    
    // perform segue and send parameter  which is selectedcategory
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let SelectedCategory = DataService.instance.GetCategory()[indexPath.row ]
    performSegue(withIdentifier: "ProductsVC", sender: SelectedCategory)
    }
    
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
           // change navigation back btn text
            let BarBtn = UIBarButtonItem()
            BarBtn.title = ""
            navigationItem.backBarButtonItem = BarBtn
            
            
            //sent selected category
            assert(sender as? CategoryStruct != nil)
           productsVC.initProducts(category: sender as! CategoryStruct)
            
            
        }
    }
    

}

