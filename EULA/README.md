# 📱 EULA - TabView SwiftUI App

A neat SwiftUI application that demonstrates how to build a multi-tab interface using `TabView`. The app consists of three main sections: **Home**, **Game**, and **Settings** — each with its own SwiftUI view.

## 🌟 Features

- 🔘 **Tabbed Navigation** using `TabView`
- 🏠 Home Tab with welcome message
- 🎮 Game Tab that loads embedded HTML content via `WKWebView`
- ⚙️ Settings Tab with basic configuration placeholder
- 🧑‍💻 Integration of UIKit component (`WKWebView`) into SwiftUI using `UIViewRepresentable`

## 💡 How It Works

- **Tab 1: Home** – Displays a welcome message.
- **Tab 2: Game** – Loads a simple HTML page using a custom `WebView` that embeds `WKWebView`.
- **Tab 3: Settings** – Displays placeholder text for settings.

## 📂 Technologies Used

- SwiftUI
- `TabView`, `VStack`, `Text`, `Image`
- `UIViewRepresentable` and `WKWebView` for HTML content rendering

## 🧪 Getting Started

1. Clone the repo or open the `.xcodeproj` file.
2. Run the app on an iOS simulator or device.
3. Navigate through the tabs to explore functionality.

## 🌐 WebView Example

This is how the HTML appears inside the Game tab:

```html
<h1>Game Loaded Here!</h1>
