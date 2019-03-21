//
//  Product.swift
//  Group5_W2019_MAD3115_FP
//
//  Created by Cheeku on 2019-03-16.
//  Copyright © 2019 Cheeku. All rights reserved.
//

import Foundation


class Product {
    private var _productID: String!
    private var _image: String!
    private var _name: String!
    private var _price: Double!
    private var _description: String!
    
    var productID: String {
        return _productID
    }
    var imageUrl: String {
        return _image
    }
    var name: String {
        return _name
    }
    var price: Double {
        return _price
    }
    var description: String {
        return _description
    }
    
    init(name: String, img: String, price: Double, desc: String) {
        self._name = name
        self._image = img
        self._price = price
        self._description = desc
    }
}
