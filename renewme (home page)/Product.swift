//
//  Product.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 15/02/2025.
//


import SwiftUI

// MARK: - Product Definition
struct Product: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let originalPrice: String?
    let discountedPrice: String?
    let discount: String?
    let description: String
    let colors: [String]
}

// MARK: - Dummy Data for Products
let products: [Product] = [
    Product(image: "wardrobe", name: "Naqi 2-Door Wardrobe", originalPrice: "AED 200.00", discountedPrice: "AED 167.00", discount: "15% OFF", description: "Introduce this stylish two-door recycled wardrobe into your child's bedroom for a stylish aesthetic and functional look.", colors: ["white", "black"]),
    Product(image: "nightstand", name: "Tripoli Nightstand", originalPrice: nil, discountedPrice: "AED 49.53", discount: nil, description: "A beautiful nightstand with a modern design.", colors: ["brown", "gray"]),
    Product(image: "slide", name: "Kids’ Playground Slide", originalPrice: "AED 150.00", discountedPrice: "AED 120.00", discount: "20% OFF", description: "A fun slide for kids' playgrounds.", colors: []),
    Product(image: "tote", name: "Canvas Tote Bag", originalPrice: "AED 30.00", discountedPrice: "AED 25.00", discount: "17% OFF", description: "A durable canvas tote bag for everyday use.", colors: [])
]
