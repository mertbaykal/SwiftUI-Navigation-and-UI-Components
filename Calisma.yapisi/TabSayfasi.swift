//
//  TabSayfasi.swift
//  Calisma.yapisi
//
//  Created by Mert Baykal on 11/05/2024.
//

import SwiftUI

struct TabSayfasi: View {
    
    init(){
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .lightGray
        
        // for icon color
        chanceColar(itemAppearance: appearance.stackedLayoutAppearance)
        chanceColar(itemAppearance: appearance.inlineLayoutAppearance)
        chanceColar(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        //for all tupe of ekran
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func chanceColar(itemAppearance: UITabBarItemAppearance){
        //no selection
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]

        // Selection
        itemAppearance.selected.iconColor = .blue
        itemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]

    }
    
    var body: some View {
        NavigationStack{
            VStack{
                TabView{
                    SettingsPage().tabItem {
                        Label("Ayarlar", systemImage: "gear")
                    }
                    
                    HomePage().tabItem {
                        Label("Home page",systemImage: "homekit")
                    }
                }
            }.navigationTitle("Tab View Using")
        }
    }
}

#Preview {
    TabSayfasi()
}
