//
//  AboutUsView 2.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 14/02/2025.
//


import SwiftUI

struct AboutUsView: View {
    var body: some View {
        VStack {
            Text("About Us")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("Welcome to our app! We are dedicated to providing you with the best experience.")
                .font(.body)
                .padding()
            
            Spacer()
        }
        .background(Color(hex: "#FBF4EE"))
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview for AboutUsView
struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
