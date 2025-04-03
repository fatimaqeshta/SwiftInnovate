//
//  ViewCartView.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 15/02/2025.
//


import SwiftUI

// MARK: - Dummy Data for Cart Items
struct CartItem: Identifiable {
    let id = UUID()
    let product: Product
    var quantity: Int
}

let cartItems = [
    CartItem(product: products[2], quantity: 1),
    CartItem(product: products[3], quantity: 2)
]

struct ViewCartView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Order")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                // Delivery Address Section
                VStack(alignment: .leading, spacing: 8) {
                    Text("Delivery Address")
                        .font(.headline)
                    
                    Text("Jl. Kpg Sutoyo No. 620, Bilzen, Tanjungbalai.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    HStack {
                        Button(action: {
                            // Action for editing address
                        }) {
                            Text("Edit Address")
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                        
                        Button(action: {
                            // Action for adding note
                        }) {
                            Text("Add Note")
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(8)
                        }
                    }
                }
                .padding()
                
                // Cart Items Section
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(cartItems) { item in
                            HStack(alignment: .center) {
                                Image(item.product.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(8)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(item.product.name)
                                        .font(.headline)
                                        .lineLimit(2)
                                    
                                    if let discountedPrice = item.product.discountedPrice {
                                        Text(discountedPrice)
                                            .font(.subheadline)
                                            .foregroundColor(.red)
                                    } else if let originalPrice = item.product.originalPrice {
                                        Text(originalPrice)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                    
                                    HStack {
                                        Button(action: {
                                            // Action for decreasing quantity
                                        }) {
                                            Text("-")
                                                .font(.headline)
                                                .padding(4)
                                                .background(Color.gray.opacity(0.2))
                                                .cornerRadius(8)
                                        }
                                        
                                        Text("\(item.quantity)")
                                            .font(.headline)
                                        
                                        Button(action: {
                                            // Action for increasing quantity
                                        }) {
                                            Text("+")
                                                .font(.headline)
                                                .padding(4)
                                                .background(Color.gray.opacity(0.2))
                                                .cornerRadius(8)
                                        }
                                    }
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(radius: 4)
                        }
                    }
                    .padding()
                }
                
                // Discount Section
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "percent")
                            .foregroundColor(.orange)
                        
                        Text("1 Discount is applied")
                            .font(.headline)
                        
                        Spacer()
                        
                        NavigationLink(destination: DiscountDetailsView()) {
                            Text(">")
                                .font(.headline)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 4)
                }
                .padding()
                
                // Payment Summary Section
                VStack(alignment: .leading, spacing: 8) {
                    Text("Payment Summary")
                        .font(.headline)
                    
                    Divider()
                    
                    HStack {
                        Text("Price")
                            .font(.subheadline)
                        
                        Spacer()
                        
                        Text("AED 58.00")
                            .font(.subheadline)
                    }
                    
                    HStack {
                        Text("Delivery Fee")
                            .font(.subheadline)
                        
                        Spacer()
                        
                        Text("AED 10.00")
                            .font(.subheadline)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Total Payment")
                            .font(.headline)
                        
                        Spacer()
                        
                        Text("AED 68.00")
                            .font(.headline)
                            .foregroundColor(.orange)
                    }
                }
                .padding()
                
                // Payment Method Section
                HStack {
                    Button(action: {
                        // Action for selecting payment method
                    }) {
                        Text("Cash")
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Action for more options
                    }) {
                        Image(systemName: "ellipsis.circle")
                            .font(.headline)
                    }
                }
                .padding()
                
                // Order Button
                Button(action: {
                    // Action for placing order
                }) {
                    Text("Order")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(12)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Order")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - Discount Details View
struct DiscountDetailsView: View {
    var body: some View {
        Text("Discount Details")
            .navigationTitle("Discount Details")
    }
}

// MARK: - Preview for ViewCartView
struct ViewCartView_Previews: PreviewProvider {
    static var previews: some View {
        ViewCartView()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 16 Pro") // Specify the device for preview
    }
}
