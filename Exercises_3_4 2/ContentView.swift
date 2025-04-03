//
//  ContentView.swift
//  Exercise 3 & 4  (2)
//
//  Created by fatima qeshta on 20/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Exercise31View()
                .tabItem {
                    Label("Exercise 3.1", systemImage: "1.circle")
                }
            
            Exercise32View()
                .tabItem {
                    Label("Exercise 3.2", systemImage: "2.circle")
                }
            
            Exercise4View()
                .tabItem {
                    Label("Exercise 4", systemImage: "3.circle")
                }
        }
    }
}
