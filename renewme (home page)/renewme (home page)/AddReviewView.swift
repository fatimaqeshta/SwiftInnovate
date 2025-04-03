//
//  AddReviewView.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 15/02/2025.
//


import SwiftUI

struct AddReviewView: View {
    @State private var experience: String = ""
    @State private var rating: Double = 0.0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("How was your experience?")
                    .font(.headline)
                    .padding(.top)
                
                TextEditor(text: $experience)
                    .frame(height: 150)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                    .padding(.horizontal)
                
                HStack {
                    Text("Star")
                        .font(.headline)
                    
                    Slider(value: $rating, in: 0...5, step: 0.1)
                        .accentColor(.orange)
                    
                    Text(String(format: "%.1f", rating))
                }
                .padding(.horizontal)
                
                Button(action: {
                    // Action for adding review
                }) {
                    Text("Add Review")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Add Reviews")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}

// MARK: - Preview for AddReviewView
struct AddReviewView_Previews: PreviewProvider {
    static var previews: some View {
        AddReviewView()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 16 Pro") // Specify the device for preview
    }
}
