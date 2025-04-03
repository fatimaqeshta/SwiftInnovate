//
//  ContentView.swift
//  renewme (shop)
//
//  Created by fatima qeshta on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Header
            HStack {
                Text("Home")
                    .foregroundColor(.orange)
                Spacer()
                Image(systemName: "magnifyingglass")
                Image(systemName: "person.circle.fill")
            }
            .padding(.horizontal)
            
            // Greeting
            VStack(alignment: .leading) {
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
                Text("Fatima Reda")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.orange)
            }
            .padding(.horizontal)
            
            // Tabs
            HStack {
                Button(action: {}) {
                    Text("Overview")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                Button(action: {}) {
                    Text("Productivity")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.yellow.opacity(0.3))
                        .cornerRadius(20)
                }
            }
            .padding(.horizontal)
            
            // Weekly Progress
            VStack(alignment: .leading, spacing: 10) {
                Text("Weekly Progress")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Here you can see your weekly task progress")
                ProgressView(value: 0.76)
                    .accentColor(.blue)
                Text("76%")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding()
            .background(Color.orange.opacity(0.3))
            .cornerRadius(20)
            .padding(.horizontal)
            
            // Categories
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Categories")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Image(systemName: "camera.fill")
                    Text("Waste Sorting")
                }
                
                // Grid of Categories
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                    CategoryView(imageName: "trash.fill", title: "Donation", subtitle: "2 New Tasks")
                    CategoryView(imageName: "ticket.fill", title: "Redeem Voucher", subtitle: "5%")
                    CategoryView(imageName: "cart.fill", title: "Shop", subtitle: "3 New Items")
                    CategoryView(imageName: "info.circle.fill", title: "About Us", subtitle: "Who Are We?")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct CategoryView: View {
    let imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange.opacity(0.7))
                .clipShape(Circle())
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.black)
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.orange)
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
