//
//  Product.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 15/02/2025.
//


import SwiftUI

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
let products = [
    Product(image: "wardrobe", name: "Naqi 2-Door Wardrobe", originalPrice: "AED 200.00", discountedPrice: "AED 167.00", discount: "15% OFF", description: "Introduce this stylish two-door recycled wardrobe into your child's bedroom for a stylish aesthetic and functional look.", colors: ["white", "black"]),
    Product(image: "nightstand", name: "Tripoli Nightstand", originalPrice: nil, discountedPrice: "AED 49.53", discount: nil, description: "A beautiful nightstand with a modern design.", colors: ["brown", "gray"]),
    Product(image: "slide", name: "Kids’ Playground Slide", originalPrice: "AED 150.00", discountedPrice: "AED 120.00", discount: "20% OFF", description: "A fun slide for kids' playgrounds.", colors: []),
    Product(image: "tote", name: "Canvas Tote Bag", originalPrice: "AED 30.00", discountedPrice: "AED 25.00", discount: "17% OFF", description: "A durable canvas tote bag for everyday use.", colors: [])
]

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Product Image with frame
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .cornerRadius(12)
                        .background(Color(hex: "#FBF4EE")) // Add frame color
                        .padding(.horizontal)
                    
                    // Product Name and Price
                    VStack(alignment: .leading, spacing: 8) {
                        Text(product.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        if let originalPrice = product.originalPrice, let discountedPrice = product.discountedPrice {
                            HStack {
                                Text(originalPrice)
                                    .strikethrough()
                                    .foregroundColor(.gray)
                                
                                Text(discountedPrice)
                                    .foregroundColor(.red)
                            }
                        } else if let discountedPrice = product.discountedPrice {
                            Text(discountedPrice)
                                .foregroundColor(.black)
                        }
                        
                        if let discount = product.discount {
                            Text("\(discount)")
                                .foregroundColor(.orange)
                        }
                    }
                    
                    // Colors
                    if !product.colors.isEmpty {
                        Text("Available Colors:")
                            .font(.headline)
                        
                        HStack {
                            ForEach(product.colors, id: \.self) { color in
                                Text(color)
                                    .padding(8)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(8)
                            }
                        }
                    }
                    
                    // Product Description
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Product Description:")
                            .font(.headline)
                        
                        Text(product.description)
                            .font(.body)
                        
                        Button(action: {
                            // Action for "Read More"
                        }) {
                            Text("Read More")
                                .underline()
                                .foregroundColor(.blue)
                        }
                    }
                    
                    // Reviews
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Reviews")
                            .font(.headline)
                        
                        NavigationLink(destination: AddReviewView()) {
                            Text("View All")
                                .underline()
                                .foregroundColor(.blue)
                        }
                    }
                    
                    // Add to Cart Button
                    Button(action: {
                        // Action for adding to cart
                    }) {
                        HStack {
                            Image(systemName: "cart")
                                .foregroundColor(.white)
                            
                            Text("ADD TO CART")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(12)
                    }
                }
                .padding()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

// MARK: - Preview for ProductDetailView
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[0])
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 16 Pro") // Specify the device for preview
    }
}