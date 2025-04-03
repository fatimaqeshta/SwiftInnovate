
//
//  ContentView.swift
//  Exercise 3 & 4  (2)
//
//  Created by fatima qeshta on 20/12/2024.
//

import SwiftUI

struct Exercise32View: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Food")) {
                    Text("Bread, Cheese, Apples")
                    Text("Sandwiches, Chips, Bananas")
                    Text("Pancakes, Syrup, Strawberries")
                }
                Section(header: Text("Toiletries")) {
                    Text("Toothpaste, Toothbrush, Soap")
                    Text("Towels, Shampoo, Sunscreen")
                }
                Section(header: Text("Days")) {
                    Text("Day 1")
                    Text("Day 2")
                    Text("Day 3")
                }
            }
            .navigationTitle("Grocery List")
        }
    }
}
