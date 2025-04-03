//
//  ShoppingPage.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 14/02/2025.
//


import SwiftUI

struct ShoppingPage: View { // Renamed from ShopView to ShoppingPage
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // Top Navigation Bar
                TopNavBar()
                
                // Search Bar
                SearchBar()
                
                // Special Offers Section
                SpecialOffersSection()
                
                // Product Grid Display
                ProductGrid()
                
                Spacer()
            }
            .padding()
            .background(Color(hex: "#FBF4EE"))
        }
    }
}

// MARK: - Top Navigation Bar
struct TopNavBar: View {
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 30, height: 30) // Increase size of heart button
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            NavigationLink(destination: ViewCartView()) { // Link to ViewCartView when cart icon is tapped
                Image(systemName: "cart")
                    .resizable()
                    .frame(width: 30, height: 30) // Increase size of cart button
                    .foregroundColor(.black)
            }
            
            Image("profile_pic") // Replace with your profile picture asset
                .resizable()
                .frame(width: 60, height: 60) // Increase size of profile picture
                .clipShape(Circle())
                .padding(.trailing)
        }
        .padding(.horizontal)
        .padding(.top)
    }
}

// MARK: - Search Bar
struct SearchBar: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField("Search", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
            Image(systemName: "gear")
                .foregroundColor(.gray)
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(12)
        .padding()
    }
}

// MARK: - Special Offers Section
struct SpecialOffersSection: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.pink.opacity(0.3), Color.purple.opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Special Offers")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Discount 10%")
                    .foregroundColor(.white)
                    .font(.subheadline)
                
                Text("Amalgamate luxurious look with comfort")
                    .foregroundColor(.white)
                    .font(.subheadline)
                
                Spacer()
                
                HStack {
                    ForEach(0..<3) { _ in
                        Circle()
                            .fill(Color.gray.opacity(0.5))
                            .frame(width: 8, height: 8)
                    }
                }
            }
            .padding()
        }
        .frame(height: 200)
        .padding()
    }
}

// MARK: - Product Grid Display
struct ProductGrid: View {
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
            ForEach(products) { product in
                NavigationLink(destination: ProductDetailView(product: product)) {
                    ProductCard(product: product)
                }
            }
        }
        .padding()
    }
}

struct ProductCard: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .center) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .cornerRadius(8)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(product.name)
                        .font(.headline)
                        .lineLimit(2)
                    
                    if let discountedPrice = product.discountedPrice {
                        Text(discountedPrice)
                            .font(.subheadline)
                            .foregroundColor(.red)
                    } else if let originalPrice = product.originalPrice {
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
                        
                        Text("1")
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
}

// MARK: - Preview for ShoppingPage
struct ShoppingPage_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingPage()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 16 Pro") // Specify the device for preview
    }
}
