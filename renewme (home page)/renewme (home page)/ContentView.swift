//
//  ContentView.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 11/02/2025.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "#FBF4EE") // Full-screen background
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    
                    // Header Section
                    HStack {
                        Text("Home")
                            .font(.headline)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                    
                    // Main Content
                    VStack(alignment: .leading) {
                        
                        // User Greeting
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Hello")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hex: "#AF5E2C"))
                                
                                Text("Fatima Reda")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hex: "#AF5E2C"))
                            }
                            
                            Spacer()
                            
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                            
                            Image("profile_pic") // Replace with actual image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 70)
                                .clipShape(Circle())
                                .background(Circle().fill(Color(hex: "#F8D9B4")))
                        }
                        .padding(.horizontal)
                        
                        // Overview and Productivity Toggle
                        HStack {
                            Text("Overview")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .clipShape(Capsule())
                            Text("Productivity")
                                .fontWeight(.bold)
                                .foregroundColor(Color(hex: "#AF5E2C"))
                                .padding()
                                .background(Color(hex: "#F8D9B4"))
                                .clipShape(Capsule())
                        }
                        .padding(.horizontal)
                        
                        // Weekly Progress Card
                        VStack(alignment: .leading) {
                            Text("Weekly Progress")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("Here you can see your weekly task progress")
                                .foregroundColor(.white)
                                .font(.subheadline)
                            
                            ProgressView(value: 0.76)
                                .progressViewStyle(LinearProgressViewStyle(tint: Color.blue))
                        }
                        .padding()
                        .background(Color(hex: "#E3A15D"))
                        .cornerRadius(20)
                        .shadow(radius: 5)
                        .padding()
                        
                        // Categories
                        Text("Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                        
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                            
                            NavigationLink(destination: DonationView()) {
                                CategoryCard(icon: "printer.fill", title: "Donation", subtitle: "2 New Tasks")
                            }
                            
                            NavigationLink(destination: RedeemView()) {
                                CategoryCard(icon: "percent", title: "Redeem", subtitle: "Voucher")
                            }
                            
                            NavigationLink(destination: ShoppingPage()) { // Updated to ShoppingPage
                                CategoryCard(icon: "bag.fill", title: "Shop", subtitle: "3 New Items")
                            }
                            
                            NavigationLink(destination: AboutUsView()) {
                                CategoryCard(icon: "info.circle", title: "About Us", subtitle: "Who Are We?")
                            }
                        }
                        .padding()
                        
                        // Waste Sorting Section
                        HStack {
                            Image(systemName: "camera.fill")
                                .font(.title)
                                .foregroundColor(.black)
                            
                            Text("Waste Sorting")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color(hex: "#FBF4EE"))
                    .cornerRadius(10)
                }
            }
        }
    }
}

// Category Button Card
struct CategoryCard: View {
    var icon: String
    var title: String
    var subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color(hex: "#517E5A"))
            
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.black)
            
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color(hex: "#E3A15D"))
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}

// Donation View
struct DonationView: View {
    var body: some View {
        Color(hex: "#FBF4EE")
            .edgesIgnoringSafeArea(.all)
    }
}

// Redeem View
struct RedeemView: View {
    var body: some View {
        Color(hex: "#FBF4EE")
            .edgesIgnoringSafeArea(.all)
    }
}

// Hex Color Support
extension Color {
    init(hex: String) {
        let hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        self.init(
            red: Double((rgb >> 16) & 0xFF) / 255.0,
            green: Double((rgb >> 8) & 0xFF) / 255.0,
            blue: Double(rgb & 0xFF) / 255.0
        )
    }
}
// MARK: - Preview for ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
