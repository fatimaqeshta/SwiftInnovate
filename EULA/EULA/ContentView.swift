//
//  ContentView.swift
//  EULA
//
//  Created by fatima qeshta on 21/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // التبويبة الأولى
            FirstView()
                .tabItem {
                    Image(systemName: "house.fill") // رمز التبويبة
                    Text("Home") // عنوان التبويبة
                }

            // التبويبة الثانية
            SecondView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Game")
                }

            // التبويبة الثالثة
            ThirdView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
        }
    }
}

// إنشاء عرض (View) لكل تبويبة
struct FirstView: View {
    var body: some View {
        VStack {
            Text("Welcome to the Home Tab")
                .font(.title)
                .padding()
        }
    }
}

struct SecondView: View {
    let htmlCode = """
    <!DOCTYPE html>
    <html>
    <head>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                background-color: #f3f3f3;
            }
            h1 {
                color: #333;
            }
        </style>
    </head>
    <body>
        <h1>Game Loaded Here!</h1>
    </body>
    </html>
    """

    var body: some View {
        WebView(htmlContent: htmlCode)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ThirdView: View {
    var body: some View {
        VStack {
            Text("Settings Tab")
                .font(.title)
                .padding()
        }
    }
}

// WebView لإظهار محتوى HTML
import WebKit
struct WebView: UIViewRepresentable {
    let htmlContent: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlContent, baseURL: nil)
    }
}

// معاينة العرض الرئيسي
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
