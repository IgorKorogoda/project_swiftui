//
//  ContentView.swift
//  ProjectMain
//
//  Created by Игорь on 06.11.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ContentApp()
    }
}

#Preview {
    ContentView()
}

struct ContentApp: View {
    var body: some View {
        
        TabView {
            
            Text("1")
                .badge(3)
                .tabItem {
                    Label("tab.item.home", systemImage: "house")
                }
                
            Text("2")
                .tabItem {
                    Label("tab.item.message", systemImage: "ellipsis.message.fill")
                }
            
            Text("3")
                .tabItem {
                    Label("tab.item.bookmark", systemImage: "bookmark.fill")
                }
            
            Text("4")
                .tabItem {
                    Label("tab.item.profile", systemImage: "person.circle.fill")
                }
            
        }
        .accentColor(.red)
    }
}
