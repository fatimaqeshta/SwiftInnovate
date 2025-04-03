//
//  BackButton.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 15/02/2025.
//


import SwiftUI

// MARK: - Custom Back Button
struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.black)
                
                Text("Back")
                    .font(.title)
                    .foregroundColor(.black)
            }
        }
    }
}