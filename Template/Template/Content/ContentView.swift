import SwiftUI
import DesignSystemKit

struct ContentView: View {
    @State private var selectedTab = 0
    private let colors = DSColors()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Label("Research", systemImage: "magnifyingglass")
                }
                .tag(1)
            
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.fill")
                }
                .tag(2)
        }
        .tint(colors.secondary)
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = UIColor(colors.backgroundPrimary)
            appearance.shadowColor = UIColor(colors.secondary)
            
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    ContentView()
} 
