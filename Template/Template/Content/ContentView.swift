import SwiftUI
import DesignSystemKit

struct ContentView: View {
    @State private var selectedTab = 1
    private let colors = DSColors()
    let typography = DSTypography()
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            DetailsView()
                .tabItem {
                    Label("Details", systemImage: "plus.square.dashed")
                }
                .tag(0)
                .font(typography.bodySmall)
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
                .tag(1)
                .font(typography.bodySmall)
       
            
            ProfileView()
                .tabItem {
                    Label("Profil", systemImage: "person.fill")
                }
                .tag(2)
                .font(typography.bodySmall)
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
