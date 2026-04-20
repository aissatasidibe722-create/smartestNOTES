import SwiftUI

struct RootView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Notes")
                .tabItem {
                    Label("Notes", systemImage: "note.text")
                }
                .tag(0)
            
            Text("Dossiers")
                .tabItem {
                    Label("Dossiers", systemImage: "folder")
                }
                .tag(1)
            
            Text("Recherche")
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
                .tag(2)
            
            Text("Paramètres")
                .tabItem {
                    Label("Paramètres", systemImage: "gear")
                }
                .tag(3)
        }
    }
}
