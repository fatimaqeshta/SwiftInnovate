//
//  ContentView.swift
//  Exercise 3 & 4  (2)
//
//  Created by fatima qeshta on 20/12/2024.
//

import SwiftUI

struct Exercise31View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(1...100, id: \ .self) { number in
                    Text("Some text with number: \(number)")
                        .padding(.vertical, 5)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .foregroundColor(.brown)
        .font(.headline)
    }
}
