//
//  Review.swift
//  renewme (home page)
//
//  Created by fatima qeshta on 15/02/2025.
//


import SwiftUI

struct Review: Identifiable {
    let id = UUID()
    let userImage: String
    let userName: String
    let date: String
    let rating: Double
    let comment: String
}

let reviews = [
    Review(userImage: "profile_pic_1", userName: "Jenny Wilson", date: "13 Sep, 2023", rating: 4.8, comment: "Excellent customer service and a good warranty make choosing the safe an informed decision for preserving valuable assets."),
    Review(userImage: "profile_pic_2", userName: "Ronald Richards", date: "9 Jan, 2024", rating: 4.8, comment: "Smart design and high-quality materials make the safe an ideal choice for those seeking a balance between security and elegance."),
    Review(userImage: "profile_pic_3", userName: "Olivia Walter", date: "13 Sep, 2023", rating: 4.8, comment: "A fantastic experience with the safe! Its robust and durable design ensures reliable protection for valuable possessions."),
    Review(userImage: "profile_pic_4", userName: "Isabel Savan", date: "13 Sep, 2023", rating: 4.8, comment: "An excellent addition to the home! The safe not only offers superior protection but also adds an elegant look to the space.")
]

struct ReviewsView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Reviews")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: AddReviewView()) {
                        Text("Add Review")
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(12)
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("139 Reviews")
                            .font(.headline)
                        
                        Spacer()
                        
                        HStack {
                            Text("4.8")
                                .font(.headline)
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                            
                            Image(systemName: "star")
                                .foregroundColor(.yellow)
                        }
                    }
                    .padding()
                    
                    List(reviews) { review in
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                Image(review.userImage)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(review.userName)
                                        .font(.headline)
                                    
                                    HStack {
                                        Text(review.date)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        
                                        Spacer()
                                        
                                        Text(String(format: "%.1f", review.rating))
                                            .font(.headline)
                                        
                                        Text("rating")
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                            
                            HStack {
                                ForEach(0..<Int(review.rating), id: \.self) { _ in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                }
                                
                                ForEach(0..<5 - Int(review.rating), id: \.self) { _ in
                                    Image(systemName: "star")
                                        .foregroundColor(.yellow)
                                }
                            }
                            
                            Text(review.comment)
                                .font(.body)
                                .lineLimit(nil)
                        }
                        .padding()
                    }
                }
                .navigationTitle("Reviews")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

// MARK: - Preview for ReviewsView
struct ReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsView()
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 16 Pro") // Specify the device for preview
    }
}