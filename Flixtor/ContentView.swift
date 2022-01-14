//
//  ContentView.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-12.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
        UITabBar.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
               
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
            
            ComingSoonTemplate()
                .disabled(true)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Coming Soon")
                }.tag(2)
            
            DownloadsView()
                .disabled(true)
                .tabItem {
                    Image(systemName: "arrow.down.to.line.alt")
                    Text("Downloads")
                }.tag(3)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
