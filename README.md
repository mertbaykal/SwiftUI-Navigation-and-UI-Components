# SwiftUI-Navigation-and-UI-Components
This repository contains a SwiftUI project demonstrating various navigation techniques and UI components. The project includes examples of navigation stacks, navigation links, buttons, sheets, tab views, and customization of navigation bars and tab bars.


---

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)
- [Components](#components)
- [Contributing](#contributing)
- [License](#license)

---

## Installation
To clone and run this project locally, follow these steps:

1. **Clone the repository:**
   ```sh
   git clone https://github.com/username/Calisma.yapisi.git
   ```

2. **Navigate to the project directory:**
   ```sh
   cd Calisma.yapisi
   ```

3. **Open the project in Xcode:**
   ```sh
   open Calisma.yapisi.xcodeproj
   ```

4. **Run the project:**
   In Xcode, select the target device and click the 'Run' button.

---

## Usage
The project demonstrates how to use various SwiftUI navigation and UI components. Below are the key components and their usage.

---

## Components

### ContentView
`ContentView` demonstrates the use of a `NavigationStack` and `Button` to navigate to another view (`GameEkran`). It passes user information to the destination view.

```swift
struct ContentView: View {
    @State private var sayfaGecis = false
    var body: some View {
        NavigationStack {
            VStack {
                Button("Start") {
                    sayfaGecis = true
                }
            }.navigationTitle("Homepage")
            .padding()
            .navigationDestination(isPresented: $sayfaGecis) {
                let userInfo = Users(isim: "mert", yas: 22, boy: 80, bekar: false)
                GameEkran(user: userInfo)
            }
        }
    }
}
```

### GameEkran
`GameEkran` displays user information passed from `ContentView` and provides buttons to navigate back and to a result screen using a sheet.

```swift
struct GameEkran: View {
    @Environment(\.presentationMode) var pm
    @State private var resultEkran = false
    
    var user = Users()
    
    var body: some View {
        VStack(spacing: 50) {
            Text("\(user.isim) - \(user.yas) - \(user.boy) - \(String(user.bekar))")
            Button("Finish") { resultEkran = true }
            Button("Back") {
                pm.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Gamepage")
        .sheet(isPresented: $resultEkran) {
            ResultEkran()
        }
    }
}
```

### ResultEkran
`ResultEkran` displays a result message and a button to close the view.

```swift
struct ResultEkran: View {
    @Environment(\.presentationMode) var dm
    var body: some View {
        VStack(spacing: 50) {
            Text("Result").font(.system(size: 50))
            Button("Close") {
                dm.wrappedValue.dismiss()
            }.font(.system(size: 25))
        }
    }
}
```

### NavSayfa
`NavSayfa` customizes the appearance of the navigation bar and includes toolbar items.

```swift
struct NavSayfa: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .blue
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello")
            }
            .navigationTitle("Page")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Back") {
                        print("Back")
                    }.foregroundColor(.white)
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button("Setting") {
                        print("Clicked Setting")
                    }.foregroundColor(.white)
                    Button {
                        print("Clicked Plus")
                    } label: {
                        Image(systemName: "plus")
                    }.foregroundColor(.white)
                }
            }
        }
    }
}
```

### TabSayfasi
`TabSayfasi` customizes the appearance of the tab bar and includes two tabs: `SettingsPage` and `HomePage`.

```swift
struct TabSayfasi: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .lightGray
        
        customizeAppearance(itemAppearance: appearance.stackedLayoutAppearance)
        customizeAppearance(itemAppearance: appearance.inlineLayoutAppearance)
        customizeAppearance(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func customizeAppearance(itemAppearance: UITabBarItemAppearance) {
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        itemAppearance.selected.iconColor = .blue
        itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                TabView {
                    SettingsPage().tabItem {
                        Label("Settings", systemImage: "gear")
                    }
                    HomePage().tabItem {
                        Label("Home Page", systemImage: "homekit")
                    }
                }
            }.navigationTitle("Tab View Using")
        }
    }
}
```

### HomePage
`HomePage` displays a simple home page message.

```swift
struct HomePage: View {
    var body: some View {
        Text("Home Page").font(.system(size: 50))
    }
}
```

### SettingsPage
`SettingsPage` displays a simple settings page message.

```swift
struct SettingsPage: View {
    var body: some View {
        Text("Settings").font(.system(size: 50))
    }
}
```

### Users Class
`Users` class defines a user with properties and initializers.

```swift
class Users {
    var isim  = ""
    var yas   = 0
    var boy   = 0.0
    var bekar = false
    
    init() {}
    
    init(isim: String = "", yas: Int = 0, boy: Double = 0.0, bekar: Bool = false) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
}
```

---

## Contributing
If you would like to contribute to this project, please create a pull request or open an issue. We welcome all feedback and contributions!

---

## License
This project is licensed under the MIT License. For more information, please see the `LICENSE` file.

---

