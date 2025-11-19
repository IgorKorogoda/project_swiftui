import SwiftUI

struct ContentView: View {
    var body: some View {
        ContentApp()
    }
}


struct ContentApp: View {
    var body: some View {
        
        TabView {
            SearchResultsUI()
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



#Preview {
    UIKitButton(
        title: "Конфигурация 1",
        isExpanded: true,
        type: .primary,
        size: .large,
        state: .enabled) {
            print("Конфигурация 1" )
        }
        .padding()
}
