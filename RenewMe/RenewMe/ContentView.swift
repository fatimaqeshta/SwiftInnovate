//
//  ContentView.swift
//  RenewMe
//
//  Created by fatima qeshta on 10/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            // 🖼️ Image at the top
            Image("app_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300) // Adjust size as needed
                .padding(.top, -100) // Add some space from the top
            
            // 📝 Text below the image
            VStack {
                Text("Renewme")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.brown)
                
                Text("greenhouse")
                    .font(.title2)
                    .italic()
                    .foregroundColor(.brown)
            }
            .padding(.top, 10) // Add space between the image and text
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "#FBF4EE")) // Set background color
        .edgesIgnoringSafeArea(.all)
    }
}

// ✅ Support for Hex Color Codes
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

#Preview {
    ContentView()
}
