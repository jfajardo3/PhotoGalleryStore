//
//  Product.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2021-12-23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "ONeil-1", image: "ONeil-1", price: 10),
                   Product(name: "ONeil-2", image: "ONeil-2", price: 10),
                   Product(name: "ONeil-3", image: "ONeil-3", price: 10),
                   Product(name: "ONeil-4", image: "ONeil-4", price: 10),
                   Product(name: "ONeil-5", image: "ONeil-5", price: 10),
                   Product(name: "ONeil-6", image: "ONeil-6", price: 10),
                   Product(name: "ONeil-7", image: "ONeil-7", price: 10),
                   Product(name: "ONeil-8", image: "ONeil-8", price: 10),
                   Product(name: "ONeil-9", image: "ONeil-9", price: 10),
                   Product(name: "ONeil-10", image: "ONeil-10", price: 10),
                   Product(name: "ONeil-11", image: "ONeil-11", price: 10),
                   Product(name: "ONeil-12", image: "ONeil-12", price: 10),
                   Product(name: "ONeil-13", image: "ONeil-13", price: 10),
                   Product(name: "ONeil-14", image: "ONeil-14", price: 10),
                   Product(name: "ONeil-15", image: "ONeil-15", price: 10),
                   Product(name: "ONeil-16", image: "ONeil-16", price: 10)]
