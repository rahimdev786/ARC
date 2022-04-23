//
//  ViewController.swift
//  ARC
//
//  Created by arshad on 4/23/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        var store:Store?
        var item:Items?
        
         store = Store(shoeStore: "Hello", foodStore: "FoodStore")
         item = Items(item1: "XXX", item2: "Oooooo")
    
        store?.item = item
        item?.store = store
        
        store = nil
        item = nil
 
    }
}



class Store{
    var shoeStore:String!
    var foodStore:String!
    weak var item:Items!
    
    init(shoeStore:String!,foodStore:String!) {
        self.foodStore = foodStore
        self.shoeStore = shoeStore
    }
    
    deinit {
        print("memmory release from store")
    }
    
}


class Items{
    var item1:String!
    var item2:String!
  weak  var store:Store!
    
    init(item1:String!,item2:String!) {
        self.item1 = item1
        self.item2 = item2
    }
    
    
    deinit {
        print("memmory release from Items")
    }
}
