import SwiftUI
import DesignSystemKit

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    
    var body: some View {
        BaseView(title: viewModel.title) {
            // Contenu spécifique à la page d'accueil
        }
    }
}

#Preview {
    HomeView()
} 