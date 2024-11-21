//
//  ContentView.swift
//  TwitchExperience
//
//  Created by Mehdi Oturak on 14.11.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    init () {
        let tabbarApperance = UITabBarAppearance()
        tabbarApperance.backgroundColor = UIColor(named: "tabbarbackColor")
        UITabBar.appearance().standardAppearance = tabbarApperance
        UITabBar.appearance().scrollEdgeAppearance = tabbarApperance
        
        let navbarApperance = UINavigationBarAppearance()
        navbarApperance.backgroundColor = UIColor(named: "tabbarbackColor")
        UINavigationBar.appearance().standardAppearance = navbarApperance
        UINavigationBar.appearance().scrollEdgeAppearance = navbarApperance
        
        UITabBar.appearance().unselectedItemTintColor = .white
        
    }
    
    var body: some View {
        
        
        
        TabView {
            NavigationView {
                FollowView()
            }
            .tabItem {
                Label("Takip ediliyor", systemImage: "heart")
            }
            NavigationView {
                
            }
            .tabItem {
                Label("Keşfet", systemImage: "safari")
            }
            NavigationView {
                
            }
            .tabItem {
                Label("Göz At", systemImage: "doc.on.doc")
            }
            NavigationView {
                
            }
            .tabItem {
                Label("Ara", systemImage: "magnifyingglass")
            }
        }
        .accentColor(Color("selectedTabbarColor"))
    }


   
}



#Preview {
    ContentView()
}
