import SwiftUI
import DesignSystemKit

struct ContentView: View {
    @State private var selectedTab = 0
    private let theme = DSTheme()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Accueil", systemImage: "house.fill")
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.fill")
                }
                .tag(2)
        }
        .tint(theme.colors.primary)
        .environment(\.dsTheme, theme)
        .onAppear {
            // Configuration de l'apparence de la TabBar
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(theme.colors.background)
            appearance.shadowColor = UIColor(theme.colors.secondary)
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    ContentView()
} 